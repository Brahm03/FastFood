import 'package:card_swiper/card_swiper.dart';
import 'package:fastfood/core/components/GradientColor.dart';
import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/models/brandModel.dart';
import 'package:fastfood/models/brand_data.dart';
import 'package:fastfood/models/cardData.dart';
import 'package:fastfood/models/carmodel.dart';
import 'package:fastfood/models/foods_data.dart';
import 'package:fastfood/models/foods_model.dart';
import 'package:fastfood/screens/info_page.dart';
import 'package:fastfood/widgets/BackContainer.dart';
import 'package:fastfood/widgets/MyButton.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:fastfood/widgets/OulindedButton.dart';
import 'package:fastfood/widgets/SaggestFoods.dart';
import 'package:fastfood/widgets/SwiperCard.dart';
import 'package:fastfood/widgets/all.dart';
import 'package:fastfood/widgets/brands.dart';
import 'package:fastfood/widgets/catoagories.dart';
import 'package:fastfood/widgets/meal_type.dart';
import 'package:fastfood/widgets/type_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                    const Spacer(),
                    IconCons.Favorite
                  ],
                ),
                SizedBox(
                  height: getHeight(16),
                ),
                CupertinoSearchTextField(),
                SizedBox(
                  height: getHeight(21),
                ),
                SizedBox(
                  width: double.infinity,
                  height: getHeight(140),
                  child: Swiper(
                    outer: true,
                    autoplayDisableOnInteraction: true,
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
                          color1: GradientColorFirst.gradientcolorsecond[__],
                          color2: GradientColorSecond.gradiencolos[__]);
                    },
                  ),
                ),
                SizedBox(
                  height: getHeight(413),
                ),
                const Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
                SizedBox(
                  height: getHeight(120),
                  child: Catagories(),
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: getHeight(375),
                      child: BackContainer(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: SizedBox(
                        height: getHeight(254),
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Foods_data.foods_list.length,
                            itemBuilder: (_, __) {
                              foods_nodel foods = Foods_data.foods_list[__];
                              return SuggestFoods(
                                ontapp: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Info_page(model: foods,)),
                                      );
                                },
                                location: foods.location,
                                name: foods.food_name,
                                price: foods.food_price,
                                pic: foods.pic,
                              );
                            }),
                      ),
                    )
                  ],
                  clipBehavior: Clip.none,
                ),
                Food_type(),
                const All(
                    color: ColorConst.ButtonColor3,
                    text_size: FontSize.Medium,
                    text: 'Save Rescued Food for 50%!',
                    text1: 'Left over supplies and food have been\nused up.'),
                SizedBox(
                  height: getHeight(254),
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Foods_data.lagman.length,
                      itemBuilder: (_, __) {
                        foods_nodel lagmans = Foods_data.lagman[__];
                        return SuggestFoods(
                          location: lagmans.location,
                          name: lagmans.food_name,
                          price: lagmans.food_price,
                          pic: lagmans.pic, ontapp: () {  },
                        );
                      }),
                ),
                const All(
                    color: ColorConst.TextColor,
                    text_size: FontSize.Large,
                    text: 'Order again',
                    text1: 'You Ordered from 17 Restaurants'),
                SizedBox(
                  height: getHeight(254),
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Foods_data.lagman.length,
                      itemBuilder: (_, __) {
                        Branmodel brands = Branddata.brandData[__];
                        return SuggestFoods(
                          location: brands.location!,
                          name: brands.brand_name,
                          price: '\$200',
                          pic: brands.pic!, ontapp: () {  },
                        );
                      }),
                ),
                const All(
                    color: ColorConst.TextColor,
                    text_size: FontSize.Medium,
                    text: 'All Restaurants',
                    text1: '256 Restaurants near you'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Type_button(text: 'Free Delivery'),
                    Type_button(text: 'Rescued'),
                    Type_button(text: 'Offer'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Branddata.brandData.length,
                      itemBuilder: (_, __) {
                        Branmodel brands = Branddata.brandData[__];
                        return Brands(
                            brandname: brands.brand_name,
                            comment: brands.comment,
                            pic: brands.brand_icon);
                      }),
                ),
                MyOutlinedButton(
                  text: 'View All Restaurants',
                  onPresssed: () {},
                  width: getWidth(300),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
