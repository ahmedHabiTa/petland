import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/features/auth/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Consumer<AuthProvider>(
        builder: (context, authProvider, _) {
          return Center(
            child: GestureDetector(
              onTap: () async{
                await authProvider.logOut(context);
              },
              child:const CustomText(
                text: 'LogOut',
                fontSize: 30,
                color: MyColors.meanColor,
              ),
            ),
          );
        },

      ),
    );
  }
}
