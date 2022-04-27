import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';
import '../../../core/common_widget/custom_wide_buttom.dart';
import 'card_payment.dart';
import 'done_order_screen.dart';

class ChoosePaymentScreen extends StatelessWidget {
  const ChoosePaymentScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: SizedBox(
          width: Constants.width(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Choose Payment Method',
                color: Color(0xFF091249),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 30),
              Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/payment-method.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CustomWideButton(
                height: 40,
                width: Constants.width(context) * 0.5,
                color: MyColors.meanColor,
                onTap: () {
                  Constants.navigateTo(
                      routeName: const CardPaymentScreen(), context: context);
                },
                child: const Center(
                  child: CustomText(
                    text: 'Credit Card',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              CustomWideButton(
                height: 40,
                width: Constants.width(context) * 0.5,
                color: MyColors.meanColor,
                onTap: () {
                  Constants.navigateTo(
                      routeName:const OrderDoneScreen(), context: context);
                },
                child: const Center(
                  child: CustomText(
                    text: 'Cash on delivery',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
