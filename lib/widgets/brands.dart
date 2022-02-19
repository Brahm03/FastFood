import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  final String brandname;
  final String comment;
  final String pic;
  const Brands({required this.brandname, required this.comment, required this.pic,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(145),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: CircleAvatar(
                  radius: 30,
                  child: Image.asset(pic),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Mytext.mytext(
                      text: brandname,
                      fontWeight: FontweightConst.bold,
                      size: FontSize.Medium,
                      color: ColorConst.TextColor),
                  SizedBox(
                    height: getHeight(5),
                  ),
                  Mytext.mytext(
                      text: comment,
                      fontWeight: FontweightConst.w2,
                      size: FontSize.Small,
                      color: ColorConst.TextColor),
                ],
              )
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.5,
            indent: 90,
          )
        ],
      ),
    );
  }
}
