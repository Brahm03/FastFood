import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class SuggestFoods extends StatelessWidget {
  final String pic;
  final String name;
  final String location;
  final String price;
  const SuggestFoods(
      {required this.location,
      required this.name,
      required this.price,
      required this.pic,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: Boxdecoration.boxdecoration(color: Colors.white),
        height: getHeight(244),
        width: getWidth(190),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(RadiusConst.Medium),
                          topRight: Radius.circular(RadiusConst.Medium)),
                      image: DecorationImage(
                          image: AssetImage(pic), fit: BoxFit.cover))),
            ),
            Expanded(
                child: Padding(
              padding: PaddingMarginConst.ExtraSmall,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Mytext.mytext(
                      text: name,
                      size: FontSize.Medium,
                      fontWeight: FontweightConst.w5,
                      color: ColorConst.TextColor),
                  Mytext.mytext(
                      text: location,
                      fontWeight: FontweightConst.w2,
                      color: ColorConst.TextColor,
                      size: FontSize.Small),
                  Spacer(),
                  Mytext.mytext(
                      text: price,
                      fontWeight: FontweightConst.w3,
                      color: ColorConst.ButtonColor)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
