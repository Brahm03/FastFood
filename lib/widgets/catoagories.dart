import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Catagories extends StatefulWidget {
  const Catagories({Key? key}) : super(key: key);

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  @override
  Widget build(BuildContext context) {
    List _catagories = [
      'Hot Details',
      'New Fast Food',
      'Save food,',
      'Set your Preferances'
    ];
    List _icons = [
      Image.asset('assets/icons/hot.png'),
      Image.asset('assets/icons/new.png'),
      Image.asset('assets/icons/save.png'),
      Image.asset('assets/icons/set.png'),
    ];
    return SizedBox(
        width: getWidth(400),
        child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: _catagories.length,physics: NeverScrollableScrollPhysics(),itemBuilder: (_, __) {
          return SizedBox(
            width: 95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 25,child: _icons[__],),
                SizedBox(
                  height: getHeight(5),
                ),
                Mytext.mytext(text: _catagories[__], size: FontSize.ExtraSmall, color: ColorConst.TextColor),
              ],
            ),
          );
        }));
  }
}
