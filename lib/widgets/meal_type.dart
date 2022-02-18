import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Food_type extends StatefulWidget {
  const Food_type({ Key? key }) : super(key: key);

  @override
  State<Food_type> createState() => _Food_typeState();
}

class _Food_typeState extends State<Food_type> {
  List _types = ['Daily meals', 'Middele-\nEastern', 'Chineese', 'Desi', 'Deshi'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(160),
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: _types.length,itemBuilder: (_,__){
        return Column(
          children: [
              CircleAvatar(backgroundColor: Colors.transparent,radius: 50,child: Image.asset('assets/icons/food_icon.png'),),
              Mytext.mytext(text: _types[__], size: FontSize.Small, color: ColorConst.TextColor, fontWeight: FontweightConst.w3),
          ]);
      }),
    );
  }
}