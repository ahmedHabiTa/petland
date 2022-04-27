import 'package:flutter/material.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';
import '../../../core/common_widget/custom_text_form_field.dart';
import '../../../core/common_widget/custom_wide_buttom.dart';
import 'choose_payment.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Region',
                  color: Color(0xFF091249),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              CustomFormField(
                width: Constants.width(context) * 0.9,
                height: 50,
                hintText: '',
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Dist.',
                  color: Color(0xFF091249),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              CustomFormField(
                width: Constants.width(context) * 0.9,
                height: 50,
                hintText: '',
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Street',
                  color: Color(0xFF091249),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              CustomFormField(
                width: Constants.width(context) * 0.9,
                height: 50,
                hintText: '',
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Building Number',
                  color: Color(0xFF091249),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              CustomFormField(
                width: Constants.width(context) * 0.9,
                height: 50,
                hintText: '',
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Extra information',
                  color: Color(0xFF091249),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              CustomFormField(
                width: Constants.width(context) * 0.9,
                height: 50,
                hintText: '',
              ),
              const SizedBox(height: 10),
              CustomWideButton(
                height: 40,
                width: Constants.width(context) * 0.3,
                color: MyColors.meanColor,
                onTap: () {},
                child: const Center(
                  child: CustomText(
                    text: 'Save',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomWideButton(
                height: 40,
                width: Constants.width(context) * 0.6,
                color: MyColors.meanColor,
                onTap: () {
                  Constants.navigateTo(
                      routeName: const ChoosePaymentScreen(), context: context);
                },
                child: const Center(
                  child: CustomText(
                    text: 'Go to the payment step',
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
    );
  }
}
