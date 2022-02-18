import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final Color color;
  final String text;
  final Widget icon;
  final double width;
  final double height;
  final Color textColor;
  final VoidCallback onpressed;
  const Mybutton(
      {
        required this.onpressed,
        this.textColor = ColorConst.KprimaryColor,
      required this.color,
      this.height = 56,
      this.width = 321,
      required this.text,
      this.icon = const SizedBox(),
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(RadiusConst.Medium)),
            primary: color,
            fixedSize: Size(getWidth(width), getHeight(height))),
        onPressed: onpressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: PaddingMarginConst.ExtraSmall,
              child: icon,
            ),
            Mytext.mytext(text: text, color: textColor)
          ],
        ));
  }
}
