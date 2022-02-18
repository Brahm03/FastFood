import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class LoginChangerButton extends StatelessWidget {
  final Color color;
  final VoidCallback ontap;
  final String text;
  const LoginChangerButton({required this.ontap,required this.text, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ColorConst.BackGrounColor,
      onTap: ontap,
      child: Column(
        children: [
          Mytext.mytext(text: text, color: ColorConst.TextColor),
          Container(
            height: 2,
            width: 70,
            color: color,
          )
        ],
      ),
    );
  }
}
