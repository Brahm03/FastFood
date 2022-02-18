import 'package:fastfood/core/components/Borderradius.dart';
import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  final String type1;
  final String type2;
  final String comment;
  final Image pic;
  final String ordertype;
  final Color color1;
  final Color color2;
  const CardSwiper(
      {required this.comment,
      required this.ordertype,
      required this.pic,
      required this.type1,
      required this.type2,
      required this.color1,
      required this.color2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusConst.Medium),
        gradient: LinearGradient(
            colors: [color1, color2], begin: Alignment.centerLeft),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 6,
              child: Padding(
                padding: PaddingMarginConst.Small,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Mytext.mytext(
                        text: type1,
                        fontWeight: FontweightConst.bold,
                        size: FontSize.Medium),
                    Mytext.mytext(text: type2, fontWeight: FontweightConst.w2 , size: FontSize.Small),
                    SizedBox(height: getHeight(15),),
                    Mytext.mytext(text: comment, fontWeight: FontweightConst.w4, size: FontSize.Small)    
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Padding(
                padding: PaddingMarginConst.Small,
                child: Column(
                  children: [
                    pic,
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.chevron_right, size: 10),
                        Mytext.mytext(text: ordertype, fontWeight: FontweightConst.bold, size: FontSize.ExtraSmall)
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
