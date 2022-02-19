import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Addition extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const Addition({this.height = 30, this.width = 361,required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(side: BorderSide(width: 2, color: ColorConst.ButtonColor),fixedSize: Size(width, height), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusConst.Medium))),
      onPressed: () {},
      child: Row(
        children: [
          Mytext.mytext(text: text, color: ColorConst.TextColor),
          const Spacer(),
          const Icon(Icons.arrow_downward, color: ColorConst.ButtonColor,)
        ],
      ),
    );
  }
}
