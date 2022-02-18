import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class Mytext {
  static mytext({required String text, Color color = Colors.white, double size = FontSize.Medium, FontWeight fontWeight = FontweightConst.normal}){
    return Text(text, style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),);
  }
}