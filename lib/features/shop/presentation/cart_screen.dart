import 'package:flutter/material.dart';
import 'package:pet_land/core/common_widget/custom_wide_buttom.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: Card(
                  elevation: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(width: 10),
                      CustomText(
                        text: 'Order Total',
                        fontSize: 14,
                        color: Color(0xFF8B97A2),
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      CustomText(
                        text: '\$25.00',
                        fontSize: 16,
                        color: Color(0xFF151B1E),
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 120,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733_960_720.jpg'),
                            )),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(height: 6),
                            CustomText(
                              text: 'Product name',
                              color: MyColors.meanColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 6),
                            CustomText(
                              text: 'Size : small',
                              color: MyColors.meanColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 6),
                            CustomText(
                              text: 'Color : Green',
                              color: MyColors.meanColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          CustomText(
                            text: 'price',
                            color: MyColors.meanColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: 'Order Summary',
                          fontSize: 16,
                          color: Color(0xFF090F13),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10),
                          CustomText(
                            text: 'Subtotal',
                            fontSize: 14,
                            color: Color(0xFF8B97A2),
                            fontWeight: FontWeight.w600,
                          ),
                          Spacer(),
                          CustomText(
                            text: '[Price]',
                            fontSize: 16,
                            color: Color(0xFF151B1E),
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10),
                          CustomText(
                            text: 'Tax',
                            fontSize: 14,
                            color: Color(0xFF8B97A2),
                            fontWeight: FontWeight.w600,
                          ),
                          Spacer(),
                          CustomText(
                            text: '[Price]',
                            fontSize: 16,
                            color: Color(0xFF151B1E),
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10),
                          CustomText(
                            text: 'Shipping',
                            fontSize: 14,
                            color: Color(0xFF8B97A2),
                            fontWeight: FontWeight.w600,
                          ),
                          Spacer(),
                          CustomText(
                            text: '[Price]',
                            fontSize: 16,
                            color: Color(0xFF151B1E),
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10),
                          CustomText(
                            text: 'Delivery',
                            fontSize: 14,
                            color: Color(0xFF8B97A2),
                            fontWeight: FontWeight.w600,
                          ),
                          Spacer(),
                          CustomText(
                            text: '[Price]',
                            fontSize: 16,
                            color: Color(0xFF151B1E),
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10),
                          CustomText(
                            text: 'Total',
                            fontSize: 14,
                            color: Color(0xFF8B97A2),
                            fontWeight: FontWeight.w600,
                          ),
                          Spacer(),
                          CustomText(
                            text: '[Order Total]',
                            fontSize: 18,
                            color: Color(0xFF151B1E),
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomWideButton(
                  height: 60,
                  width: Constants.width(context) * 0.8,
                  color: MyColors.meanColor,
                  onTap: (){},
                  child: const Center(
                    child: CustomText(
                      text: 'Add a new Address',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
