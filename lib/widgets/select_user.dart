import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Select_user extends StatelessWidget {
  const Select_user({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(40),
      width: getWidth(200),
      decoration: Boxdecoration.boxdecoration(color: ColorConst.BackGrounColor),
      child: Row(
        children: [
          Mytext.mytext(text: 'Select User -'),
          
        ],
      ),
    );
  }
}