import 'dart:async';

import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamedAndRemoveUntil(context, '/register', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image:
                DecorationImage(image: Picconst.SplashPic, fit: BoxFit.cover),
          ),
          child: Padding(
            padding: PaddingMarginConst.Large,
            child: Stack(
              children: [
                Picconst.BackImage,
                Padding(
                    padding: PaddingMarginConst.Large,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: IconCons.Logo,
                    )),
                Positioned(
                  top: 180,
                  right: 70,
                  left: 120,
                  child: Mytext.mytext(
                      text: 'Food for Everyone',
                      color: Colors.orange,
                      fontWeight: FontweightConst.w2),
                )
              ],
            ),
          )),
    );
  }
}
