import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';

import '../../../core/common_widget/custom_text.dart';
import '../../../core/constant/constants.dart';
import '../widgets/category_item_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const CustomText(
                text: 'What are you looking for ?',
                fontSize: 35,
                color: MyColors.meanColor,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.28,
                    width: Constants.height(context) * 0.25,
                    title: 'Pet Food',
                    onTap: () {},
                    image: 'assets/images/Barbershop.png',
                    color: const Color(0xFFFF9A9E),
                  ),
                  const SizedBox(width: 10),
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.28,
                    width: Constants.height(context) * 0.25,
                    title: 'Pet Toys',
                    onTap: () {},
                    image: 'assets/images/Department_Shop.png',
                    color: const Color(0xFFEFB92D),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.3,
                    width: Constants.height(context) * 0.3,
                    title: 'Litter Sand',
                    onTap: () {},
                    image: 'assets/images/Barbershop.png',
                    color: const Color(0xFFFF9A9E),
                  ),
                  const SizedBox(width: 10),
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.3,
                    width: Constants.height(context) * 0.4,
                    title: 'Transport Bags',
                    onTap: () {},
                    image: 'assets/images/Comments.png',
                    color: const Color(0xFFA455CA),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.28,
                    width: Constants.height(context) * 0.4,
                    title: 'Pet Grooming',
                    onTap: () {},
                    image: 'assets/images/Barbershop.png',
                    color: const Color(0xFFFF9A9E),
                  ),
                  const SizedBox(width: 10),
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.28,
                    width: Constants.height(context) * 0.3,
                    title: 'Pet Furniture',
                    onTap: () {},
                    image: 'assets/images/Department_Shop.png',
                    color: const Color(0xFFEFB92D),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.3,
                    width: Constants.height(context) * 0.4,
                    title: 'Pet Accessories',
                    onTap: () {},
                    image: 'assets/images/Barbershop.png',
                    color: const Color(0xFFFF9A9E),
                  ),
                  const SizedBox(width: 10),
                  CategoryItemWidget(
                    height: Constants.height(context) * 0.3,
                    width: Constants.height(context) * 0.4,
                    title: 'Pet Health Care',
                    onTap: () {},
                    image: 'assets/images/Comments.png',
                    color: const Color(0xFFA455CA),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
