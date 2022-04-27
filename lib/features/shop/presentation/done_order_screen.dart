import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/shop/presentation/shop_tabs_screen.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';
import '../../../core/common_widget/custom_wide_buttom.dart';

class OrderDoneScreen extends StatelessWidget {
  const OrderDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.meanColor,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
          child: SizedBox(
            width: Constants.width(context),
            height: Constants.height(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColors.meanColor,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const CustomText(
                  text: 'Payment Confirmed!',
                  fontSize: 24,
                  color: MyColors.meanColor,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 15),
                const CustomText(
                  text: '[Order Price]',
                  fontSize: 36,
                  color: Color(0xFF003473),
                ),
                const SizedBox(height: 15),
                const CustomText(
                  text: 'Your payment has been confirmed and your stuff are on the way !',
                  fontSize: 18.5,
                  color: Color(0xFF8B97A2),
                ),
                const Spacer(),
                CustomWideButton(
                  height: 40,
                  width: Constants.width(context) * 0.5,
                  color: MyColors.meanColor,
                  onTap: () {
                    Constants.navigateToRep(
                        routeName:const ShopTabsScreen(), context: context);
                  },
                  child: const Center(
                    child: CustomText(
                      text: 'Go to Home Page',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
