import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../core/common_widget/custom_text.dart';

class ShopAdminProductDetailsScreen extends StatelessWidget {
  const ShopAdminProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: MyColors.meanColor,
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: Constants.width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                  text: 'Products',
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
                const SizedBox(height: 10),
                Container(
                  height: Constants.height(context) * 0.08,
                  width: Constants.width(context) * 0.9,
                  color: Colors.grey[400],
                  child: Row(
                    children: const [
                      SizedBox(width: 10),
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.black87,
                      ),
                      Spacer(),
                      CustomText(
                        text: 'Add a new Product',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                      SizedBox(width: 100),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: Constants.width(context) * 0.8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Constants.height(context) * 0.3,
                        child: Row(
                          children: [
                            SizedBox(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Constants.height(context) * 0.08,
                                    width: Constants.width(context) * 0.4,
                                    child: Row(
                                      children: [
                                        Container(
                                          width:
                                              Constants.width(context) * 0.05,
                                          color: Colors.grey[400],
                                        ),
                                        const SizedBox(width: 5),
                                        const CustomText(
                                          text: 'select',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: Constants.height(context) * 0.08,
                                    width: Constants.width(context) * 0.4,
                                    color: Colors.grey[400],
                                    child: Row(
                                      children: const [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.payment,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(width: 2),
                                        CustomText(
                                          text: 'Product name',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: Constants.height(context) * 0.08,
                                    width: Constants.width(context) * 0.4,
                                    color: Colors.grey[400],
                                    child: Row(
                                      children: const [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.price_change_outlined,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(width: 2),
                                        CustomText(
                                          text: 'price',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              width: Constants.width(context) * 0.35,
                            ),
                            const Spacer(),
                            Stack(
                              children: [
                                Container(
                                  width: Constants.width(context) * 0.4,
                                  color: Colors.grey[400],
                                  child: const Center(
                                    child: Icon(
                                      Icons.photo_outlined,
                                      size: 60,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  right: 7,
                                  bottom: 5,
                                  child: Icon(
                                    Icons.add_circle_outline,
                                    size: 27,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      customRow(
                        context: context,
                        firstTitle: 'quantity available',
                        secondTitle: 'Weight',
                      ),
                      const SizedBox(height: 10),
                      customRow(
                        context: context,
                        firstTitle: 'SKU code',
                        secondTitle: 'color',
                      ),
                      const SizedBox(height: 10),
                      customRow(
                        context: context,
                        firstTitle: 'brand name',
                        secondTitle: 'expired date',
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: Constants.height(context) * 0.08,
                        width: Constants.width(context) * 0.8,
                        color: Colors.grey[400],
                        child: const Center(
                          child: CustomText(
                            text: 'product description',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: Constants.height(context) * 0.08,
                        width: Constants.width(context) * 0.9,
                        color: Colors.grey[400],
                        child: Row(
                          children: const [
                            SizedBox(width: 20),
                            CustomText(
                              text: 'Section',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black87,
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: Constants.height(context) * 0.08,
                        width: Constants.width(context) * 0.9,
                        color: Colors.grey[400],
                        child: Row(
                          children: const [
                            SizedBox(width: 20),
                            CustomText(
                              text: 'sub Section',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black87,
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: Constants.height(context) * 0.08,
                        width: Constants.width(context) * 0.9,
                        color: Colors.grey[400],
                        child: const Center(
                          child: CustomText(
                            text: 'save',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customRow({
    required BuildContext context,
    required String firstTitle,
    required String secondTitle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: Constants.height(context) * 0.08,
          width: Constants.width(context) * 0.35,
          color: Colors.grey[400],
          child: Center(
            child: CustomText(
              text: firstTitle,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
        Container(
          height: Constants.height(context) * 0.08,
          width: Constants.width(context) * 0.4,
          color: Colors.grey[400],
          child: Center(
            child: CustomText(
              text: secondTitle,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
