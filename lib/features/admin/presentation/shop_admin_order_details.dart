import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/admin/presentation/shop_admin_product_details_screen.dart';
import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';

class ShopAdminOrderDetails extends StatelessWidget {
  ShopAdminOrderDetails({Key? key}) : super(key: key);

  final firstSection = [
    'Order ID#',
    'Order Date',
    'Order Status',
  ];
  final secondSection = [
    'Customer name',
    'Customer phone number ',
    'E-mail',
  ];
  final thirdSection = [
    'Shipping ',
    'city',
    'District, street, building number ',
  ];
  final forthSection = [
    'Payment',
    'Total',
    'Payment Method',
  ];
  final fifthSection = [
    'Order total',
    'shipping price',
    'tax price',
    'total',
  ];

  final productDetails = [
    'quantity',
    'price',
    'total price',
  ];

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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                            const SizedBox(height: 15),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: sectionDetails(
                                      title: firstSection[index],
                                      detail: '# # #'),
                                );
                              },
                            ),
                            customDivider(),
                            const SizedBox(height: 10),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: sectionDetails(
                                      title: secondSection[index],
                                      detail: '# # #'),
                                );
                              },
                            ),
                            customDivider(),
                            const SizedBox(height: 10),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: sectionDetails(
                                      title: thirdSection[index], detail: ''),
                                );
                              },
                            ),
                            customDivider(),
                            const SizedBox(height: 10),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: sectionDetails(
                                      title: forthSection[index], detail: ''),
                                );
                              },
                            ),
                            customDivider(),
                            customDivider(),
                            ListView.builder(
                              itemCount: 2,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Constants.navigateTo(
                                        routeName:
                                            const ShopAdminProductDetailsScreen(),
                                        context: context);
                                  },
                                  child: Center(
                                    child: Container(
                                      width: Constants.width(context) * 0.7,
                                      color: Colors.grey[400],
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(height: 10),
                                            const CustomText(
                                              text: 'Products',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.black87,
                                            ),
                                            const SizedBox(height: 10),
                                            SizedBox(
                                              height: 40,
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: const [
                                                      CustomText(
                                                        text: 'product name',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black87,
                                                      ),
                                                      Spacer(),
                                                      CustomText(
                                                        text: 'product id',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black87,
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        shape:
                                                            BoxShape.rectangle,
                                                        color:
                                                            Colors.grey[600]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            ListView.builder(
                                              itemCount: productDetails.length,
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      CustomText(
                                                        text: productDetails[
                                                            index],
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black87,
                                                      ),
                                                      const Spacer(),
                                                      const CustomText(
                                                        text: '',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black87,
                                                      ),
                                                      const SizedBox(width: 20),
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            customDivider(),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: sectionDetails(
                                      title: fifthSection[index],
                                      detail: '# # #'),
                                );
                              },
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
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

  Widget customDivider() {
    return const Divider(
      thickness: 2.0,
      color: Colors.black87,
      endIndent: 0,
      indent: 0,
    );
  }

  Widget sectionDetails({
    required String title,
    required String detail,
  }) {
    return Row(
      children: [
        CustomText(
          text: title,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF091249),
        ),
        const Spacer(),
        CustomText(
          text: detail,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF091249),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
