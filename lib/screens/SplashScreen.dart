import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: Picconst.SplashPic, fit: BoxFit.cover),
        ),
        child: CircleAvatar(
          backgroundColor: ColorConst.KprimaryColor,
          radius: 150,
          child: IconCons.Logo,
        ),
      ),
    );
  }
}
