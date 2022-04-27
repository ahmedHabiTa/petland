import 'package:flutter/material.dart';

import '../../../core/common_widget/custom_text.dart';
import '../../../core/constant/constants.dart';

class CategoryItemWidget extends StatelessWidget {
  final double height;
  final double width;
  final Function onTap;
  final String image;
  final String title;
  final Color color;

  const CategoryItemWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.onTap,
    required this.image,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 5),
              Container(
                height: Constants.height(context) * 0.15,
                width: Constants.width(context) * 0.12,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                            AssetImage(image))),
              ),
              const SizedBox(height: 5),
               CustomText(
                text: title,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}
