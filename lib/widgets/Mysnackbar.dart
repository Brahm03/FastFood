import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class MyMessanger {
  static showMessanger(BuildContext context, String text) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 500),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.redAccent,
        content: Text(
          text,
          style: const TextStyle(fontSize: FontSize.ExtraSmall),
        ),
      ),
    );
  }
}