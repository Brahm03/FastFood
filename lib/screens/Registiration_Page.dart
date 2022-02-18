import 'package:fastfood/core/components/Borderradius.dart';
import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class Registiration_Page extends StatelessWidget {
  const Registiration_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                    decoration: MyBorderRadiusConatiner.DecorationBorder())),
            Expanded(
              flex: 7,
              child: Column(
                children: [Expanded(
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField()
                      ],
                    ),
                  ),
                ),
                Expanded(child: Column())
                 ] ),
            )
          ],
        ));
  }
}
