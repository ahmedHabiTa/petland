import 'package:flutter/material.dart';
import 'package:pet_land/features/shop/widgets/shop_item_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';

class PetFoodDetails extends StatelessWidget {
  final String title;

  const PetFoodDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

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
        centerTitle: true,
        title: CustomText(
          text: title,
          fontSize: 24,
          color: MyColors.meanColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 8 / 8.5,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ShopItemWidget();
                },
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
