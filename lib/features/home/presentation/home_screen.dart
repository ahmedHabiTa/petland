import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/core/util/shared_prefs_helper.dart';
import 'package:pet_land/features/shop/presentation/shop_tabs_screen.dart';
import 'package:provider/provider.dart';

import '../../auth/providers/auth_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List images = [
    'assets/images/grooming_banner_.png',
    'assets/images/vet_banner_.png',
    'assets/images/shop_banner_.png',
    'assets/images/hotel_banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    final username = SharedPrefsHelper.getData(key: 'firstName');
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 12),
              SizedBox(
                height: Constants.height(context) * 0.45,
                width: Constants.width(context),
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                      int pageViewIndex) =>
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              images[itemIndex],
                            ),
                          ),
                        ),
                      ),
                  options: CarouselOptions(
                    // padEnds: false,
                    // pageSnapping: false,
                    viewportFraction: 0.99,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft * 0.8,
                child: CustomText(
                  text: 'Hello , $username',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: MyColors.meanColor,
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: CustomText(
                  text: 'What are you looking for ?',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: MyColors.meanColor,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Constants.height(context) * 0.3,
                    width: Constants.width(context) * 0.25,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4FACFE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Container(
                            height: Constants.height(context) * 0.2,
                            width: Constants.width(context) * 0.15,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/Syringe.png'))),
                          ),
                          const SizedBox(height: 5),
                          const CustomText(
                            text: 'Vet',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: Constants.height(context) * 0.3,
                    width: Constants.width(context) * 0.3,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF9A9E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Container(
                            height: Constants.height(context) * 0.2,
                            width: Constants.width(context) * 0.15,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/Barbershop.png'))),
                          ),
                          const SizedBox(height: 5),
                          const CustomText(
                            text: 'Grooming',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: Constants.height(context) * 0.3,
                    width: Constants.width(context) * 0.25,
                    decoration: BoxDecoration(
                      color: const Color(0xFFACCF5C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Container(
                            height: Constants.height(context) * 0.2,
                            width: Constants.width(context) * 0.15,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/Sleeping_in_Bed.png'))),
                          ),
                          const SizedBox(height: 5),
                          const CustomText(
                            text: 'Hotel',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Constants.navigateTo(
                          routeName: const ShopTabsScreen(), context: context);
                    },
                    child: Container(
                      height: Constants.height(context) * 0.3,
                      width: Constants.width(context) * 0.25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFB92D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Container(
                              height: Constants.height(context) * 0.2,
                              width: Constants.width(context) * 0.15,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/images/Department_Shop.png'))),
                            ),
                            const SizedBox(height: 5),
                            const CustomText(
                              text: 'Shop',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: Constants.height(context) * 0.3,
                    width: Constants.width(context) * 0.25,
                    decoration: BoxDecoration(
                      color: const Color(0xFFA455CA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Container(
                            height: Constants.height(context) * 0.2,
                            width: Constants.width(context) * 0.15,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/Comments.png'))),
                          ),
                          const SizedBox(height: 5),
                          const CustomText(
                            text: 'Blog',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Consumer<AuthProvider>(
              //   builder: (context, authProvider, _) {
              //     return Center(
              //       child: GestureDetector(
              //         onTap: () async {
              //           await authProvider.logOut(context);
              //         },
              //         child: const CustomText(
              //           text: 'LogOut',
              //           fontSize: 30,
              //           color: MyColors.meanColor,
              //         ),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
