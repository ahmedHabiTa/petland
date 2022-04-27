import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/common_widget/custom_text.dart';

class ShopItemWidget extends StatelessWidget {
   String? name;
   String? image;
   String? price;

   ShopItemWidget({
    Key? key,
     this.name,
     this.image,
     this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: 160,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image:  DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(image ??
                          'https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733_960_720.jpg'),
                    )),
              ),
              const SizedBox(height: 8),
               CustomText(
                text:name ?? 'name',
                color: MyColors.meanColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 6),
               CustomText(
                text:price ?? 'price',
                color: MyColors.meanColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 8),
              const Icon(
                Icons.add_shopping_cart,
                color: MyColors.meanColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
