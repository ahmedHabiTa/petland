import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_land/core/util/shared_prefs_helper.dart';

import '../../../../../core/colors/colors.dart';
import '../../../../../core/constant/constants.dart';
import '../../../../auth/presentation/screens/login_create_acount_screen.dart';
import 'onBoard_models.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  PageController? _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xFF003473),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                SizedBox(
                  height: 700.0.h,
                  child: PageView.builder(
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: onBoardingList.length,
                    physics: const BouncingScrollPhysics(),
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext? context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 15.0.w, left: 15.0.w),
                        child: Column(
                          children: [
                            Image(
                              fit: BoxFit.fill,
                              width: 200.0.w,
                              height: 200.0.h,
                              image: AssetImage(onBoardingList[index].image!),
                            ),
                            SizedBox(
                              height: 30.0.h,
                            ),
                            Text(
                              onBoardingList[index].title!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 36.0.sp,
                                color: const Color(0xFF003473),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              onBoardingList[index].description!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 24.0.sp,
                                color: const Color(0xFF003473),
                              ),
                            ),
                            SizedBox(
                              height: 100.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (currentIndex < 3) {
                                    currentIndex = currentIndex + 1;
                                    // _controller!.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
                                    _controller!.animateToPage(currentIndex,
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.ease);
                                  } else {
                                    //  Navigator.pushNamed(context, loginScreen);
                                  }
                                });
                              },
                              child: currentIndex == 3
                                  ? GestureDetector(
                                      onTap: () async {
                                        Constants.navigateToRep(
                                            routeName:
                                                const LoginCreateAccountScreen(),
                                            context: context!);
                                        await SharedPrefsHelper.saveData(
                                            key: 'onBoard', value: true);
                                      },
                                      child: Container(
                                        width: 142.0.w,
                                        height: 50.0.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF003473),
                                          borderRadius:
                                              BorderRadius.circular(8.0.r),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Get Started',
                                            style: TextStyle(
                                              fontSize: 15.0.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 142.0.w,
                                      height: 50.0.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF003473),
                                        borderRadius:
                                            BorderRadius.circular(8.0.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                            fontSize: 15.0.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 16),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (currentIndex < 3) {
                                    currentIndex = currentIndex + 1;
                                    // _controller!.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
                                    _controller!.animateToPage(currentIndex,
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.ease);
                                  } else {
                                    //  Navigator.pushNamed(context, loginScreen);
                                  }
                                });
                              },
                              child: currentIndex == 3
                                  ? Container()
                                  : Container(
                                      width: 142.0.w,
                                      height: 50.0.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFF2D9CBB)),
                                        borderRadius:
                                            BorderRadius.circular(8.0.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Skip',
                                          style: TextStyle(
                                            fontSize: 15.0.sp,
                                            color: const Color(0xFF003473),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
