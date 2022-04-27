import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/common_widget/custom_text_form_field.dart';
import 'package:pet_land/core/common_widget/loading_widget.dart';
import 'package:pet_land/features/shop/widgets/shop_item_widget.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF003473)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const CustomText(
          text: 'Shop',
          fontSize: 36,
          color: MyColors.meanColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('products').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Padding(
                padding:  EdgeInsets.only(top: 80.0),
                child:  LoadingWidget(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: CustomText(
                  text: 'حدث خطأ',
                  color: Colors.red,
                  fontSize: 30,
                ),
              );
            } else if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        const CustomFormField(
                          hintText: 'search here..',
                        ),
                        Positioned(
                          right: 10,
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF4B39EF)),
                            child: const Center(
                              child: CustomText(
                                text: 'Search',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: 'Most popular',
                        color: Color(0xFF091249),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 175,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return  ShopItemWidget(
                            image: snapshot.data!.docs[index]['image'],
                            name: snapshot.data!.docs[index]['name'],
                            price: snapshot.data!.docs[index]['price'],
                          );
                        },
                        itemCount: snapshot.data!.docs.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: 'New in',
                        color: Color(0xFF091249),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 175,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return  ShopItemWidget(
                            image: snapshot.data!.docs[index]['image'],
                            name: snapshot.data!.docs[index]['name'],
                            price: snapshot.data!.docs[index]['price'],
                          );
                        },
                        itemCount: snapshot.data!.docs.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
