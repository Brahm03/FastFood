import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Type_button extends StatelessWidget {
  final String text;
  const Type_button({required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        height: getHeight(40),
        decoration: Boxdecoration.boxdecoration(color: ColorConst.type_color),
        child: Mytext.mytext(
            text: text,
            fontWeight: FontweightConst.w3,
            size: FontSize.Small,
            color: ColorConst.TextColor),
      ),
    );
  }
}
