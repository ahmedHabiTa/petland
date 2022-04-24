import 'package:flutter/material.dart';

class Constants {
  static void navigateToRep({
    required var routeName,
    required BuildContext context,
  }) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => routeName,
      ),
    );
  }

  static void navigateTo({
    required var routeName,
    required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => routeName,
      ),
    );
  }
}
