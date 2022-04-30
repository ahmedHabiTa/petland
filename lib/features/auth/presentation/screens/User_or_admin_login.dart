import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widget/custom_wide_container.dart';
import '../../../../core/constant/constants.dart';
import '../../../admin/presentation/shop_admin_home_page.dart';
import 'Login_screen.dart';

class UserOrAdminLogin extends StatelessWidget {
  const UserOrAdminLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
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
              title: 'Login as Pet owner',
              height: 60.h,
              width: 320.w,
              containerColor: Colors.white,
              textColor: const Color(0xFF003473),
              onTap: () {
                Constants.navigateTo(
                    routeName:const LoginScreen(), context: context);
              },
            ),
            const SizedBox(height: 25),
            CustomWideContainer(
              title: 'Login as Admin',
              height: 60.h,
              width: 320.w,
              containerColor: const Color(0xFF003473),
              textColor: Colors.white,
              onTap: () {
                Constants.navigateTo(routeName:const ShopAdminHomePage(), context: context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
