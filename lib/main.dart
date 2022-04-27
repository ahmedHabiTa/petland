import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/common_widget/loading_widget.dart';
import 'package:pet_land/features/auth/presentation/screens/login_create_acount_screen.dart';
import 'package:pet_land/features/auth/providers/auth_provider.dart';
import 'package:pet_land/features/home/presentation/home_screen.dart';
import 'package:pet_land/features/home/presentation/tabs_screen.dart';
import 'package:pet_land/features/on_boarding/presentation/screens/splash_screen.dart';
import 'package:pet_land/features/shop/provider/shop_provider.dart';
import 'package:provider/provider.dart';

import 'core/util/shared_prefs_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPrefsHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final onBoard = SharedPrefsHelper.getData(key: 'onBoard');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<ShopProvider>(
          create: (_) => ShopProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (_) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: onBoard == true
              ? StreamBuilder<User?>(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context,snapshot){
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return const LoadingWidget();
                    }else if(snapshot.hasError){
                      return const Scaffold(body:  Center(child:Text('Something went wrong')));
                    }else if(snapshot.hasData){
                      return const TabsScreen();
                    }else{
                      return const LoginCreateAccountScreen();
                    }
                  },
                )
              : const SplashScreen(),
        ),
      ),
    );
  }
}
