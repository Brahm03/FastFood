import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class MyBorderRadiusConatiner {
  static  DecorationBorder({Color color = Colors.white}) {
    return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(RadiusConst.Lare));
  }
}
