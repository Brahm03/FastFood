import 'package:fastfood/models/foods_model.dart';
import 'package:fastfood/models/nutratilnal_value.dart';
import 'package:flutter/material.dart';

class Foods_data {
  static List<foods_nodel> foods_list = [
    foods_nodel(
        pic: 'assets/images/copuccino.png',
        food_name: 'Cappucino',
        food_price: '\$200',
        location: 'Suhani Restaurant',
        nutrational_value: Nutrational_value(
            caloria: '145',
            Carbohydrates: '12.3 g',
            Pottasium: '4%',
            protain: '2.5 g',
            sadium: '15%',
            vitamins: 'Vitamin A , C'),
        rating: '4.5'),
    foods_nodel(
        pic: 'assets/images/friedRice.png',
        food_name: 'Fride Rice',
        food_price: '\$200',
        location: 'Suhani Restaurant',
        nutrational_value: Nutrational_value(
            caloria: '132',
            Carbohydrates: '12.3 g',
            Pottasium: '4%',
            protain: '2.5 g',
            sadium: '15%',
            vitamins: 'Vitamin A , C'),
        rating: '4.5'),
    foods_nodel(
        pic: 'assets/images/egg.png',
        food_name: 'Egg and Cheese',
        food_price: '\$50',
        location: 'Mehfils Place',
        nutrational_value: Nutrational_value(
            caloria: '160',
            Carbohydrates: '15.3 g',
            Pottasium: '8%',
            protain: '1.0 g',
            sadium: '20%',
            vitamins: 'Vitamin B , C'),
        rating: '3.0'),
    foods_nodel(
        pic: 'assets/images/ice_cream.png',
        food_name: 'StrawBerry Ice Cream',
        food_price: '\$100',
        location: 'Cream Stone',
        nutrational_value: Nutrational_value(
            caloria: '110',
            Carbohydrates: '17.3 g',
            Pottasium: '9%',
            protain: '2.3 g',
            sadium: '50%',
            vitamins: 'Vitamin B , C, H'),
        rating: '5.6')
  ];

  static List<foods_nodel> lagman = [
    foods_nodel(
        pic: 'assets/images/biryanis.png',
        food_name: 'Biryanis and More',
        food_price: '\$125',
        location: 'Hyderabadi, North Indian, etc',
        nutrational_value: Nutrational_value(
            Carbohydrates: '23.0g',
            Pottasium: '15%',
            protain: '5.4g',
            caloria: '145',
            sadium: '34 %',
            vitamins: 'Vitamins C , B'),
        rating: '3.1'),
    foods_nodel(
        pic: 'assets/images/istah.png',
        food_name: 'Istah - Shavarma',
        food_price: '\$97',
        location: 'Arabian, Lebanese',
        nutrational_value: Nutrational_value(
            Carbohydrates: '9.0g',
            Pottasium: '5%',
            protain: '9.4g',
            caloria: '120',
            sadium: '53 %',
            vitamins: 'Vitamins F , A'),
        rating: '7.3'),
    foods_nodel(
        pic: 'assets/images/wow.png',
        food_name: 'WOW ! Momo',
        food_price: '\$43',
        location: 'Fast food, Chinese',
        nutrational_value: Nutrational_value(
            Carbohydrates: '13.0g',
            Pottasium: '2%',
            protain: '5.4g',
            caloria: '80',
            sadium: '34 %',
            vitamins: 'Vitamins A , C'),
        rating: '8.4')
  ];
}
