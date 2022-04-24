import 'package:flutter/material.dart';

import '../colors/colors.dart';
class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: MyColors.meanColor,),
    );
  }
}
