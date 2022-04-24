import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_text_form_field.dart';
import 'package:pet_land/core/common_widget/custom_wide_buttom.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../../core/colors/colors.dart';
import 'User_or_admin_login.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Create Account',
                      color: Color(0xFF091249),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: 'First Name',
                            color: Color(0xFF091249),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomFormField(
                            width: width * 0.42,
                            height: 50,
                            hintText: '',
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: 'Second Name',
                            color: Color(0xFF091249),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomFormField(
                            width: width * 0.42,
                            height: 50,
                            hintText: '',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Enter your phone number',
                      color: Color(0xFF091249),
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
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Enter your E-mail',
                      color: Color(0xFF091249),
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
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Password',
                      color: Color(0xFF091249),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                    suffixBool: true,
                    width: width * 0.9,
                    height: 50,
                    hintText: '',
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'Confirm Password',
                      color: Color(0xFF091249),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomFormField(
                    suffixBool: true,
                    width: width * 0.9,
                    height: 50,
                    hintText: '',
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 340,
                        child: CheckboxListTile(
                          activeColor: const Color(0xFF091249),
                          title: const CustomText(
                            text: 'I agree with Terms & Condition',
                            color: Color(0xFF091249),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          value: checkValue,
                          onChanged: (value) {
                            setState(() {
                              checkValue = !checkValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  CustomWideButton(
                    height: 40,
                    width: 130,
                    color: MyColors.meanColor,
                    onTap: () {},
                    child: const Center(
                      child: CustomText(
                        text: 'Sign Up',
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
                          routeName: const UserOrAdminLogin(),
                          context: context);
                    },
                    child: const Center(
                      child: CustomText(
                        text: 'Have an account already? login',
                        color: Color(0xFF091249),
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
