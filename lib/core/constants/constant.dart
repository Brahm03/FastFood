import 'package:fastfood/core/components/Size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ColorConst {
  static const Color KprimaryColor = Colors.white;
  static const Color TextColor = Colors.black;
  static const Color TextInputColor = Color(0XFFFFFFFF);
  static const Color BackGrounColor = Color(0XFFF3F3F3);
  static const Color ButtonColor = Color(0xffF8774A);
  static const Color ButtonColor2 = Color(0xff1877F2);
  static const Color ButtonColor3 = Color(0xff4FA987);
  static const Color MainPagecolor = Color(0xff97d5c7);
  static const Color Amber = Color(0xffFDF9EA);
}

class Picconst {
  static const AssetImage SplashPic = AssetImage('assets/images/splashpic.png');
  static Image BackImage = Image.asset('assets/images/back.png');
}

class IconCons {
  static Image Logo = Image.asset('assets/icons/logo.png');
  static Image Google = Image.asset('assets/icons/google.png');
  static Image Facebook = Image.asset('assets/icons/facebook.png');
  static SvgPicture HomeIcon = SvgPicture.asset('assets/icons/home.svg');
  static Icon Favorite = const Icon(
    Icons.favorite,
    color: ColorConst.MainPagecolor,
    size: FontSize.ExtraLarge,
  );
}

class RadiusConst {
  static const double ExtraSmall = 10.0;
  static const double Small = 14.0;
  static const double Medium = 18.0;
  static const double Lare = 22.0;
  static const double Extralarge = 28.0;
}

class PaddingMarginConst {
  static const EdgeInsets ExtraSmall = EdgeInsets.all(10.0);
  static const EdgeInsets Small = EdgeInsets.all(14.0);
  static const EdgeInsets Medium = EdgeInsets.all(18.0);
  static const EdgeInsets Large = EdgeInsets.all(22.0);
  static const EdgeInsets ExtraLarge = EdgeInsets.all(50.0);
  static EdgeInsets Huge = EdgeInsets.symmetric(horizontal: getWidth(38));
  static const EdgeInsets TextInputPadding =
      EdgeInsets.symmetric(horizontal: 58);
}

class FontSize {
  static const ExtraSmall = 12.0;
  static const Small = 14.0;
  static const Medium = 18.0;
  static const Large = 25.0;
  static const ExtraLarge = 40.0;
}

class FontweightConst {
  static const FontWeight bold = FontWeight.bold;
  static const FontWeight normal = FontWeight.normal;
  static const FontWeight w1 = FontWeight.w100;
  static const FontWeight w2 = FontWeight.w200;
  static const FontWeight w3 = FontWeight.w300;
  static const FontWeight w4 = FontWeight.w400;
  static const FontWeight w5 = FontWeight.w500;
  static const FontWeight w6 = FontWeight.w600;
}
