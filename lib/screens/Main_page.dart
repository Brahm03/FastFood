import 'package:card_swiper/card_swiper.dart';
import 'package:fastfood/core/components/GradientColor.dart';
import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/models/cardData.dart';
import 'package:fastfood/models/carmodel.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:fastfood/widgets/SwiperCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  _Main_pageState createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Padding(
            padding: PaddingMarginConst.Large,
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(20),
                ),
                Row(
                  children: [
                    IconCons.HomeIcon,
                    SizedBox(
                      width: getWidth(8),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Mytext.mytext(
                            text: 'Home',
                            color: ColorConst.TextColor,
                            fontWeight: FontweightConst.bold),
                        Mytext.mytext(
                            text: '21-42-34, Nabjarin Hills Hayder',
                            color: CupertinoColors.systemGrey,
                            size: FontSize.Small)
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite,
                      color: ColorConst.MainPagecolor,
                      size: FontSize.ExtraLarge,
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(16),
                ),
                CupertinoSearchTextField(),
                SizedBox(height: getHeight(21),),
                SizedBox(
                  width: double.infinity,
                  height: getHeight(140),
                  child: Swiper(
                    itemHeight: 160,
                    itemWidth: 600,
                    layout: SwiperLayout.TINDER,
                    scale: 0.19,
                    autoplay: true,
                    itemCount: CardData.cardList.length,
                    itemBuilder: (_, __) {
                      Cardmodel cards = CardData.cardList[__];
                      return CardSwiper(
                          type1: cards.type1,
                          type2: cards.type2,
                          comment: cards.comment,
                          ordertype: cards.orgertype,
                          pic: cards.pic,
                          color1: GradientColorFirst.gradientcolorsecond[__], color2: GradientColorSecond.gradiencolos[__]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
