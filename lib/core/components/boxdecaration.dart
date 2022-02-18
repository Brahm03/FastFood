import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class Boxdecoration {
  static boxdecoration({required Color color}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(RadiusConst.Medium),
      color: color,
    );
  }
}
