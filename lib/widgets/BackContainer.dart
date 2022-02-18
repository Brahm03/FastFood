import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

import 'Mytext.dart';

class BackContainer extends StatelessWidget {
  const BackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Boxdecoration.boxdecoration(color: ColorConst.Amber),
      width: getWidth(364),
      height: getHeight(370),
      child: Padding(
        padding: PaddingMarginConst.Medium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Mytext.mytext(
                    text: 'Looking for',
                    color: ColorConst.ButtonColor,
                    fontWeight: FontweightConst.w2,
                    size: FontSize.Large),
                SizedBox(
                  width: getWidth(5),
                ),
                Mytext.mytext(
                    text: 'BreakFast',
                    fontWeight: FontweightConst.bold,
                    color: ColorConst.ButtonColor,
                    size: FontSize.Large)
              ],
            ),
            SizedBox(
              height: getHeight(10),
            ),
            Mytext.mytext(
                text: 'Here’s what you might like to taste',
                color: ColorConst.TextColor,
                fontWeight: FontweightConst.w1,
                size: FontSize.Medium)
          ],
        ),
      ),
    );
  }
}
