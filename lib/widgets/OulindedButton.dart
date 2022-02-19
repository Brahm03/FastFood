import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPresssed;
  final String text;
  final  double height;
  final double width;
  const MyOutlinedButton(
      {
       this.height = 40,
       this.width = 10,
      required this.text, required this.onPresssed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(fixedSize: Size(width, height), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusConst.Medium))),
      onPressed: onPresssed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Mytext.mytext(
              text: text, fontWeight: FontweightConst.w1, color: Colors.black, size: FontSize.Small),
          const Icon(Icons.chevron_right, color: Colors.black, size: FontSize.Medium,)
        ],
      ),
    );
  }
}
