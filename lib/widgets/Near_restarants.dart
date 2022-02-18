import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class Near_Resturants extends StatelessWidget {
  const Near_Resturants({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(138),
      width: getWidth(294),
      decoration: Boxdecoration.boxdecoration(color: ColorConst.KprimaryColor),
      child: Column(
        children: [],
      ),
    );
  }
}