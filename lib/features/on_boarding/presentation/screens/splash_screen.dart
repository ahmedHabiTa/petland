import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/colors/colors.dart';
import 'package:pet_land/core/common_widget/custom_drop_down_form_field.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_wide_buttom.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/on_boarding/presentation/screens/on_Boarding_screens/on_borading_screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 800.h,
          width: 360.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 100.0, vertical: 35.0),
                child: CustomText(
                  text: 'Welcome',
                  fontSize: 32,
                  color: MyColors.meanColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              const CustomText(
                text: 'to',
                fontSize: 32,
                color: MyColors.meanColor,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: CustomText(
                  text: 'Where all your pet needs in one app',
                  fontSize: 22,
                  color: MyColors.meanColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              //drop down to implement
              Container(
                width: 200.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.black87)),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(width: 10),
                    CustomText(
                      text: 'English',
                      fontSize: 13,
                      color: Color(0xFF003473),
                      fontWeight: FontWeight.w400,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              CustomWideButton(
                height: 70.h,
                width: 200.w,
                color: MyColors.meanColor,
                onTap: () {
                  Constants.navigateTo(
                      routeName: OnBoardingScreen(), context: context);
                },
                child: Center(
                  child: CustomText(
                    text: 'Let\'s start',
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 200.h,
                width: 200.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Group 2283.png'),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
