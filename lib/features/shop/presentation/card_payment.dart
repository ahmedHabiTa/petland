import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';
import '../../../core/common_widget/custom_wide_buttom.dart';
import '../../../core/constant/constants.dart';
import 'done_order_screen.dart';

class CardPaymentScreen extends StatefulWidget {
  const CardPaymentScreen({Key? key}) : super(key: key);

  @override
  State<CardPaymentScreen> createState() => _CardPaymentScreenState();
}

class _CardPaymentScreenState extends State<CardPaymentScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
        title: const CustomText(
          text: 'Credit /Debit card',
          fontSize: 24,
          color: MyColors.meanColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'Enter your card information:',
                  color: Color(0xFF091249),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              CreditCardForm(
                cardNumberDecoration:const InputDecoration(
                  labelText: 'Card Number',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.black87,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                ),
                cardHolderDecoration: const InputDecoration(
                  labelText: 'Card Holder',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                ),
                cvvCodeDecoration: const InputDecoration(
                  labelText: 'CVV',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                ),
                expiryDateDecoration: const InputDecoration(
                  labelText: 'Expired Date',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.black87,
                      )
                  ),
                ),
                textColor: Colors.black87,
                cardNumber: '',
                expiryDate: '',
                cardHolderName: '',
                cvvCode: '',
                onCreditCardModelChange: (value){},
                themeColor: MyColors.meanColor,
                formKey:formKey ,
              ),
              const SizedBox(height: 20),
              CustomWideButton(
                height: 70,
                width: Constants.width(context) * 0.6,
                color:const Color(0xFF1B895A),
                onTap: () {
                  Constants.navigateTo(
                      routeName:const OrderDoneScreen(), context: context);
                },
                child:  Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Icon(
                        Icons.payments,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      CustomText(
                        text: 'Confirm Payment',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
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
