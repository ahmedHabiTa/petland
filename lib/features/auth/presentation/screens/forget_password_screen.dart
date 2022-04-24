import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_text_form_field.dart';
import 'package:pet_land/core/common_widget/custom_wide_buttom.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/auth/presentation/screens/create_account_screen.dart';

import '../../../../core/colors/colors.dart';
import 'User_or_admin_login.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Color(0xFF003473)),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 800.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  const CustomText(
                    text: 'Forget your password?',
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 20),
                  const CustomText(
                    text:
                        'Enter your email address and we will send you a new password at your email ',
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                  const SizedBox(height: 60),
                  CustomFormField(
                    width: width * 0.9,
                    height: 50,
                    hintText: '',
                  ),
                  const SizedBox(height: 40),
                  CustomWideButton(
                    height: 40,
                    width: 200,
                    color: const Color(0xFF003473),
                    onTap: () {},
                    child: const Center(
                      child: CustomText(
                        text: 'Reset password',
                        color: Colors.white,
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
