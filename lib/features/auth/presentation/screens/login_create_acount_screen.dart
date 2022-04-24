import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_wide_container.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/auth/presentation/screens/Login_screen.dart';

import 'create_account_screen.dart';

class LoginCreateAccountScreen extends StatelessWidget {
  const LoginCreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
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
                  image: AssetImage('assets/images/Group 2283.png'),
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustomWideContainer(
              title: 'Create account',
              height: 60.h,
              width: 320.w,
              containerColor: Colors.white,
              textColor: const Color(0xFF003473),
              onTap: () {
                Constants.navigateTo(
                    routeName: const CreateAccountScreen(), context: context);
              },
            ),
            const SizedBox(height: 25),
            CustomWideContainer(
              title: 'Login',
              height: 60.h,
              width: 320.w,
              containerColor: const Color(0xFF003473),
              textColor: Colors.white,
              onTap: () {
                Constants.navigateTo(
                    routeName: const LoginScreen(), context: context);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 320.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 140,
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  CustomText(
                    text: 'Or',
                    color: Color(0xFF003473),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    width: 140,
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {},
              child: Material(
                elevation: 10,
                shadowColor: Colors.black87,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 60.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1'))),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        const CustomText(
                          text: 'Login with Google',
                          fontSize: 16,
                          color: Color(0xFF606060),
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
