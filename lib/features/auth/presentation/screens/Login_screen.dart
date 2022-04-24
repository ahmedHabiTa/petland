import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_text_form_field.dart';
import 'package:pet_land/core/common_widget/custom_wide_buttom.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/auth/presentation/screens/create_account_screen.dart';

import '../../../../core/colors/colors.dart';
import 'User_or_admin_login.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 800.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Container(
                    height: 200.h,
                    width: 200.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/login.png'),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Login',
                      color: Color(0xFF003473),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Enter your E-mail',
                      color: Color(0xFF003473),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                    width: width * 0.9,
                    height: 50,
                    hintText: '',
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Enter your password',
                      color: Color(0xFF003473),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomFormField(
                    suffixBool: true,
                    width: width * 0.9,
                    height: 50,
                    hintText: '',
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Constants.navigateTo(
                          routeName:const ForgetPasswordScreen(), context: context);
                    },
                    child: Align(
                      alignment: Alignment.centerLeft * 0.7,
                      child: const CustomText(
                        text: 'Forgot password?',
                        color: Color(0xFF003473),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomWideButton(
                    height: 40,
                    width: 200,
                    color: const Color(0xFF003473),
                    onTap: () {},
                    child: const Center(
                      child: CustomText(
                        text: 'Login',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      Constants.navigateTo(
                          routeName: const CreateAccountScreen(),
                          context: context);
                    },
                    child: const Center(
                      child: CustomText(
                        text: 'Don’t have an account? sign up',
                        color: Color(0xFF003473),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
