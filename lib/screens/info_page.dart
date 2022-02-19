import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/models/foods_model.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:fastfood/widgets/addition.dart';
import 'package:fastfood/widgets/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Info_page extends StatefulWidget {
  final List<foods_nodel> order;
  final foods_nodel model;
  const Info_page({required this.order, required this.model, Key? key})
      : super(key: key);

  @override
  State<Info_page> createState() => _Info_pageState();
}

class _Info_pageState extends State<Info_page> {
  late foods_nodel? foodModel;
  @override
  void initState() {
    super.initState();
    foodModel = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    int index = 1;
    return Scaffold(
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorConst.ButtonColor,
            fixedSize: Size(350, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        onPressed: () {
          widget.order.add(foods_nodel(pic: foodModel!.pic, food_name: foodModel!.food_name, food_price: foodModel!.food_price, location: foodModel!.location ,nutrational_value: foodModel!.nutrational_value, rating: foodModel!.rating));
          setState(() {
          });
          showDialog(
              
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: Colors.transparent,
                    content: Container(
                        height: 140,
                        width: 100,
                        decoration: Boxdecoration.boxdecoration(
                            color: ColorConst.ButtonColor),
                        child:  Center(
                            child: Mytext.mytext(text: 'Your food hace been added to busket ${foodModel!.food_name}'))),
                  ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Mytext.mytext(text: foodModel!.food_price),
            Counter(
              ontap1: () {
                setState(() {
                  if (index != 0) {
                    index++;
                  }
                });
              },
              index: index,
              ontap2: () {
                setState(() {
                  index++;
                });
              },
            ),
            Icon(Icons.store_rounded)
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
            width: double.infinity,
          ),
          Positioned(
              top: 0,
              child: Container(
                height: getHeight(294),
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  foodModel!.pic,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
                decoration: Boxdecoration.boxdecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                height: 580,
                child: Padding(
                  padding: PaddingMarginConst.Large,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Mytext.mytext(
                                    text: 'Descripton',
                                    color: ColorConst.TextColor),
                                SizedBox(
                                  height: getHeight(20),
                                ),
                                Mytext.mytext(
                                    text: Lorem.lorem,
                                    color: ColorConst.TextColor,
                                    fontWeight: FontweightConst.w2,
                                    size: FontSize.ExtraSmall),
                                SizedBox(
                                  height: getHeight(20),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getWidth(20),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Mytext.mytext(
                                  text: 'Descripton',
                                  color: ColorConst.TextColor),
                              Divider(
                                thickness: 0.5,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Mytext.mytext(
                                          text: 'Pratain',
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: 'Carbohydrate',
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: 'Sodium',
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: 'Potassium',
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: 'Rich in Vitamin A,C and B3',
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Mytext.mytext(
                                          text: foodModel!
                                              .nutrational_value.protain,
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: foodModel!
                                              .nutrational_value.Carbohydrates,
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: foodModel!
                                              .nutrational_value.sadium,
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      Mytext.mytext(
                                          text: foodModel!
                                              .nutrational_value.Pottasium,
                                          size: FontSize.ExtraSmall,
                                          color: ColorConst.TextColor),
                                      SizedBox(
                                        height: getHeight(40),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Colors.black,
                              ),
                              Row(children: [
                                const Icon(
                                  Icons.local_fire_department,
                                  color: ColorConst.ButtonColor,
                                ),
                                Mytext.mytext(
                                    text: foodModel!.nutrational_value.caloria +
                                        ' cal',
                                    color: ColorConst.TextColor,
                                    fontWeight: FontweightConst.w2)
                              ])
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Addition(
                        text: 'Select user',
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Mytext.mytext(
                          text: 'Additions', color: ColorConst.TextColor),
                      const SizedBox(
                        height: 40,
                      ),
                      const Addition(text: 'Panner')
                    ],
                  ),
                )),
          ),
          Positioned(
            right: 10,
            top: 30,
            child: Container(
              alignment: Alignment.center,
              height: getHeight(38),
              width: getWidth(75),
              decoration: Boxdecoration.boxdecoration(
                  color: Colors.white.withOpacity(0.5)),
              child: Row(
                children: [
                  Icon(Icons.star),
                  Mytext.mytext(text: foodModel!.rating)
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 240,
            child: Chip(
              shadowColor: Colors.black,
              elevation: 10,
              backgroundColor: Colors.white,
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Mytext.mytext(
                      text: foodModel!.food_name,
                      color: ColorConst.TextColor,
                      size: FontSize.Small,
                      fontWeight: FontweightConst.bold),
                  Mytext.mytext(
                      text: foodModel!.location,
                      color: ColorConst.TextColor,
                      fontWeight: FontweightConst.w2)
                ],
              ),
            ),
          ),
          Positioned(
              top: 20,
              left: 20,
              child: BackButton(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
