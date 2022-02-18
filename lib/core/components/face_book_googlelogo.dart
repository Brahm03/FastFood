import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

import 'Size_config.dart';

class LogoGooge_Facebook extends StatelessWidget {
  final Image icon;
  const LogoGooge_Facebook({required this.icon,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(45),
      width: getWidth(45),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black, blurStyle: BlurStyle.solid)],
        borderRadius: BorderRadius.circular(RadiusConst.Medium),
      ),
      child: Padding(padding: PaddingMarginConst.ExtraSmall, child: icon,)
    );
  }
}
