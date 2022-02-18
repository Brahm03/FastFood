import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:fastfood/widgets/OulindedButton.dart';
import 'package:flutter/material.dart';

class All extends StatelessWidget {
  final String text;
  final String text1;
  final double text_size;
  final Color color;
  const All(
      {required this.color,required this.text_size, required this.text, required this.text1, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext.mytext(
                text: text, fontWeight: FontweightConst.bold, size: text_size, color: color),
            Mytext.mytext(text: text1, fontWeight: FontweightConst.w2, size: FontSize.Small, color: ColorConst.TextColor)
          ],
        ),
        Spacer(),
        Padding(padding: EdgeInsets.only(bottom: 20), child:  MyOutlinedButton(text: 'all', onPresssed: (){}, width: getWidth(10)),)
      ],
    );
  }
}
