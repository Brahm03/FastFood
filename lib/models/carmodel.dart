import 'package:flutter/material.dart';

class Cardmodel {
  String type1;
  String type2;
  String comment;
  Image pic;
  String orgertype;

  Cardmodel(
      {required this.comment,
      required this.orgertype,
      required this.pic,
      required this.type1,
      required this.type2});
}
