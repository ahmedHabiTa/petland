import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';
import 'package:pet_land/features/shop/presentation/pet_food_details.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';

class PetFoodScreen extends StatelessWidget {
  final String title;

  const PetFoodScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> petTitles = [
      'Pet Food',
      'Wet Food',
      'Milk and Kittens Care',
      'Treats & Vitamines'
    ];
    List<String> litterTitles = [
      'Litter',
      'Litter Box & Supplies',
    ];

    List<String> petAccessories = [
      'Pet Clothes',
      'Pet Collar',
      'Vests & Harnesses',
      'Pet Toys',
      'Transport Bags',
      'Pet Furniture',
    ];
    List<String> healthBeautyCare = [
      'Shampoo & Conditioner',
      'Veterinary Care',
      'Training & Cleaning',
      'Combs & Supplies',
      'Pet Grooming',
    ];

    if (title == 'Pet Food') {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(petTitles.length, (index) {
              return GestureDetector(
                onTap: () {
                  Constants.navigateTo(
                      routeName: PetFoodDetails(
                        title: petTitles[index],
                      ),
                      context: context);
                },
                child: SizedBox(
                  height: Constants.height(context) * 0.25,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        CustomText(
                          text: petTitles[index],
                          fontSize: 18,
                          color: const Color(0xFF15212B),
                          fontWeight: FontWeight.w600,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF15212B),
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      );
    }
    if (title == 'Litter & Supplies') {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(litterTitles.length, (index) {
              return GestureDetector(
                onTap: () {
                  Constants.navigateTo(
                      routeName: PetFoodDetails(
                        title: litterTitles[index],
                      ),
                      context: context);
                },
                child: SizedBox(
                  height: Constants.height(context) * 0.25,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        CustomText(
                          text: litterTitles[index],
                          fontSize: 18,
                          color: const Color(0xFF15212B),
                          fontWeight: FontWeight.w600,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF15212B),
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      );
    }
    if (title == 'Pet Accessories') {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(petAccessories.length, (index) {
              return GestureDetector(
                onTap: () {
                  Constants.navigateTo(
                      routeName: PetFoodDetails(
                        title: petAccessories[index],
                      ),
                      context: context);
                },
                child: SizedBox(
                  height: Constants.height(context) * 0.25,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        CustomText(
                          text: petAccessories[index],
                          fontSize: 18,
                          color: const Color(0xFF15212B),
                          fontWeight: FontWeight.w600,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF15212B),
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      );
    }
    if (title == 'Health & Beauty Care') {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(healthBeautyCare.length, (index) {
              return GestureDetector(
                onTap: () {
                  Constants.navigateTo(
                      routeName: PetFoodDetails(
                        title: healthBeautyCare[index],
                      ),
                      context: context);
                },
                child: SizedBox(
                  height: Constants.height(context) * 0.25,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        CustomText(
                          text: healthBeautyCare[index],
                          fontSize: 18,
                          color: const Color(0xFF15212B),
                          fontWeight: FontWeight.w600,
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF15212B),
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      );
    }
    return Container();
  }
}
