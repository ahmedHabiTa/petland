import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/admin/presentation/shop_admin_orders.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';
import '../../../core/common_widget/custom_wide_buttom.dart';

class ShopAdminHomePage extends StatelessWidget {
  const ShopAdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: Constants.width(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  const CustomText(
                    text: 'Shop Dashboard',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: MyColors.meanColor,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: Constants.height(context) * 0.6,
                    width: Constants.width(context) * 0.95,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            shopDashboardItem(
                                context: context,
                                title: 'Sales',
                                icon: Icons.attach_money),
                            const SizedBox(height: 10),
                            shopDashboardItem(
                                context: context,
                                title: 'Customers',
                                icon: Icons.group_add),
                            const SizedBox(height: 10),
                            shopDashboardItem(
                                context: context,
                                title: 'Orders',
                                icon: Icons.shopping_bag),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const CustomText(
                    text: 'Newest Orders',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: MyColors.meanColor,
                  ),
                  const SizedBox(height: 15),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return SizedBox(
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
                              children: const [
                                SizedBox(height: 15),
                                CustomText(
                                  text: '[Customer name]',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF090F13),
                                ),
                                SizedBox(height: 15),
                                CustomText(
                                  text: 'order id#',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8B97A2),
                                ),
                                SizedBox(height: 10),
                                CustomText(
                                  text: 'Location',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8B97A2),
                                ),
                                SizedBox(height: 10),
                                CustomText(
                                  text: 'Total price',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8B97A2),
                                ),
                                SizedBox(height: 10),
                                CustomText(
                                  text: 'Status',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8B97A2),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomWideButton(
                    height: 40,
                    width: Constants.width(context) * 0.6,
                    color: const Color(0xFF003473),
                    onTap: () {
                      Constants.navigateTo(
                          routeName:const ShopAdminOrder(), context: context);
                    },
                    child: const Center(
                      child: CustomText(
                        text: 'See more orders',
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
      ),
    );
  }

  Widget shopDashboardItem({
    required String title,
    required BuildContext context,
    required IconData icon,
  }) {
    return Container(
      height: Constants.height(context) * 0.15,
      decoration: BoxDecoration(
          color: Colors.grey[300]!, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Icon(
            icon,
            size: 40,
            color: Colors.black87,
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF262D34),
              ),
              const CustomText(
                text: '# # #',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262D34),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
