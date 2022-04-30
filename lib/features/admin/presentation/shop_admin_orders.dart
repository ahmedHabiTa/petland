import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/admin/presentation/shop_admin_order_details.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';

class ShopAdminOrder extends StatelessWidget {
  const ShopAdminOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: Constants.width(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                const CustomText(
                  text: 'Orders',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: MyColors.meanColor,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: Constants.width(context) * 0.9,
                  height: Constants.height(context) * 0.15,
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.grey[300]!,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: const [
                          CustomText(
                            text: 'Search...',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF151B1E),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            color: Color(0xFF151B1E),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.grey[300]!,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Constants.navigateTo(
                              routeName: ShopAdminOrderDetails(),
                              context: context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, top: 4.0, right: 8, left: 8),
                          child: SizedBox(
                            height: Constants.height(context) * 0.5,
                            width: Constants.width(context) * 0.95,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 15),
                                    Row(
                                      children: const [
                                        CustomText(
                                          text: '[Customer name]',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF090F13),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.read_more_sharp,
                                          size: 30,
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const CustomText(
                                      text: 'order id#',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8B97A2),
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomText(
                                      text: 'Location',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8B97A2),
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomText(
                                      text: 'Total price',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8B97A2),
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomText(
                                      text: 'Status',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8B97A2),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
