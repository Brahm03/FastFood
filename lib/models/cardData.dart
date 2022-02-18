import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fastfood/models/carmodel.dart';

class CardData {
  static List<Cardmodel> cardList = [
    Cardmodel(comment: 'You can now order from multiple restaurants at the same time!', orgertype: 'SET THEM NOW', pic: Image.asset('assets/images/cardimage1.png'), type1: 'Select Preferences', type2: 'For multiple users.'),
    Cardmodel(comment: 'Left over food and supplies are gathered and sold for 50% off!', orgertype: 'ORDER NOW', pic: Image.asset('assets/images/cardimage2.png'), type1: 'Rescued Food', type2: 'Saving food and hunger.')
  ];
}
