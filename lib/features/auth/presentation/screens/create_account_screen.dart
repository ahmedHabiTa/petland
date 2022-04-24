import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_text_form_field.dart';
import 'package:pet_land/core/common_widget/custom_wide_buttom.dart';
import 'package:pet_land/core/common_widget/loading_widget.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/auth/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/colors/colors.dart';
import 'User_or_admin_login.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool checkValue = true;
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;

  toggleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

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
          child: Form(
            key: formKey,
            child: SizedBox(
             // height: 800.h,
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
                              controller: firstNameController,
                              onChanged: (value) {
                                setState(() {
                                  value = firstNameController.text.trim();
                                });
                              },
                              validation: 'field is required',
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
                              controller: secondNameController,
                              onChanged: (value) {
                                setState(() {
                                  value = secondNameController.text.trim();
                                });
                              },
                              validation: 'field is required',
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
                      inputType: TextInputType.number,
                      controller: phoneController,
                      onChanged: (value) {
                        setState(() {
                          value = phoneController.text.trim();
                        });
                      },
                      validation: 'Phone number is required',
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
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {
                          value = emailController.text.trim();
                        });
                      },
                      validation: 'E-mail is required',
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
                      controller: passwordController,
                      onChanged: (value) {
                        setState(() {
                          value = passwordController.text.trim();
                        });
                      },
                      validation: 'password is required',
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
                      controller: passwordConfirmController,
                      onChanged: (value) {
                        setState(() {
                          value = passwordConfirmController.text.trim();
                        });
                      },
                      validation: 'confirm password is required',
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
                    Consumer<AuthProvider>(
                      builder: (context, authProvider, _) {
                        return isLoading == true
                            ? const LoadingWidget()
                            : CustomWideButton(
                                height: 40,
                                width: 130,
                                color: MyColors.meanColor,
                                onTap: () async {
                                  if (!formKey.currentState!.validate()) {
                                    return;
                                  } else if (passwordConfirmController.text
                                          .toString() !=
                                      passwordController.text.toString()) {
                                    Constants.showToast(
                                        message: 'password doesn\'t match',
                                        color: Colors.red);
                                  }else if(checkValue == false){
                                    Constants.showToast(
                                        message: 'Please, agree our Terms and Conditions',
                                        color: Colors.red);
                                  }
                                  else {
                                    toggleLoading();
                                    await authProvider.signUp(
                                      context: context,
                                      firstName:
                                          firstNameController.text.trim(),
                                      secondName:
                                          secondNameController.text.trim(),
                                      phoneNumber: phoneController.text.trim(),
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                    );
                                    toggleLoading();
                                  }
                                },
                                child: const Center(
                                  child: CustomText(
                                    text: 'Sign Up',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                      },
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

                    const SizedBox(height:20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
