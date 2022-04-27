import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';
import '../../../core/common_widget/custom_wide_buttom.dart';

// ignore: must_be_immutable
class ProductDetailsScreen extends StatefulWidget {
  String? name;
  String? image;
  String? price;
  String? description;

  ProductDetailsScreen({
    Key? key,
    this.name,
    this.image,
    this.price,
    this.description,
  }) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.meanColor,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
            width: Constants.width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: Constants.height(context) * 0.6,
                  width: Constants.width(context),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.image!),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    CustomText(
                      text: widget.name!,
                      color: const Color(0xFF090F13),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    const Spacer(),
                    CustomText(
                      text: widget.price!,
                      color: const Color(0xFF4B39EF),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CustomText(
                      text: widget.description!,
                      color: const Color(0xFF8B97A2),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: Constants.width(context) * 0.8,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(width: 10),
                      CustomText(
                        text: 'Select the Size',
                        fontSize: 16,
                        color: Colors.black87,
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.favorite_outline_rounded,
                      size: 40,
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(width: 1.0, color: Colors.black87)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            child: const Icon(
                              Icons.remove,
                              size: 35,
                            ),
                            onTap: () {
                              if (amount == 0) {
                                print('stop');
                              } else {
                                setState(() {
                                  amount--;
                                });
                              }
                            },
                          ),
                          CustomText(
                            text: amount.toString(),
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                amount++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              size: 35,
                              color: MyColors.meanColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomWideButton(
                  height: 60,
                  width: Constants.width(context) * 0.6,
                  color: MyColors.meanColor,
                  onTap: () {},
                  child: const Center(
                    child: CustomText(
                      text: 'Add to Cart',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
