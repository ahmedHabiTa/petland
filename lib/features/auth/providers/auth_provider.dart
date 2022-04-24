import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/core/util/shared_prefs_helper.dart';
import 'package:pet_land/features/auth/presentation/screens/login_create_acount_screen.dart';

import '../../../models/user_model.dart';
import '../../home/presentation/home_screen.dart';

class AuthProvider extends ChangeNotifier {
  UserModel? userModel;

  Future<void> login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      Constants.navigateToRep(routeName: const HomeScreen(), context: context);
    } on FirebaseAuthException catch (error) {
      Constants.showToast(
        message: error.message.toString(),
        color: Colors.red,
      );
      print(error);
    }
    notifyListeners();
  }

  Future<void> logOut(context) async {
    await FirebaseAuth.instance.signOut();
    Constants.navigateToRep(routeName:const LoginCreateAccountScreen(), context: context);
  }

  Future<void> signUp({
    required String firstName,
    required String secondName,
    required String phoneNumber,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
            await SharedPrefsHelper.saveData(key: 'firstName', value: firstName);
            await SharedPrefsHelper.saveData(key: 'secondName', value: secondName);
            await SharedPrefsHelper.saveData(key: 'phoneNumber', value: phoneNumber);
            await SharedPrefsHelper.saveData(key: 'email', value: email);

      });
      Constants.navigateToRep(routeName: const HomeScreen(), context: context);
    } on FirebaseAuthException catch (error) {
      Constants.showToast(message: error.message.toString(), color: Colors.red);
    }
  }
}
