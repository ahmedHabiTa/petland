import 'package:flutter/material.dart';
import 'package:pet_land/core/common_widget/custom_text.dart';
import 'package:pet_land/core/constant/constants.dart';

import '../../../core/colors/colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const CustomText(
          text: 'WishList',
          fontSize: 36,
          color: MyColors.meanColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              SizedBox(
                height: Constants.height(context) * 1.9,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 120,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10),
                            Container(
                              height: 100,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733_960_720.jpg'),
                                  )),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(height: 6),
                                  const CustomText(
                                    text: 'name',
                                    color: MyColors.meanColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(height: 6),
                                  const CustomText(
                                    text: 'description',
                                    color: MyColors.meanColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    textOverflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    height: 20,
                                    width: 160,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFFC9C9CF)),
                                    child: const Center(
                                      child: CustomText(
                                        text: 'Add to cart',
                                        color: MyColors.meanColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                               //  SizedBox(height: 6),
                                Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                CustomText(
                                  text: 'price',
                                  color: MyColors.meanColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
