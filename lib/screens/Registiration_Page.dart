import 'package:fastfood/core/components/Borderradius.dart';
import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/widgets/MyButton.dart';
import 'package:fastfood/widgets/MyTextformField.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Registiration_Page extends StatefulWidget {
  const Registiration_Page({Key? key}) : super(key: key);

  @override
  State<Registiration_Page> createState() => _Registiration_PageState();
}

class _Registiration_PageState extends State<Registiration_Page> {
  final TextEditingController _usename_mobile = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: ColorConst.BackGrounColor,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: MyBorderRadiusConatiner.DecorationBorder(),
                child: Padding(
                  padding: PaddingMarginConst.Medium,
                  child: Column(children: [
                    IconCons.Logo,
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(50),
            ),
            Expanded(
              flex: 7,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Form(
                        child: Padding(
                          padding: PaddingMarginConst.Huge,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MytextInput(validator: (text){},controller: _usename_mobile,text: 'Username, Mobile number'),
                              MytextInput(validator: (text){},controller: _password,text: 'Password'),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Mytext.mytext(
                                        text: 'Forget Password ?',
                                        color: ColorConst.ButtonColor)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: PaddingMarginConst.Huge,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Mybutton(
                                color: ColorConst.ButtonColor, text: 'Login'),
                            SizedBox(
                                height: 40,
                                child: Center(
                                  child: Mytext.mytext(
                                      text: 'Or',
                                      fontWeight: FontweightConst.w6,
                                      color: ColorConst.TextColor),
                                )),
                             Mybutton(
                                icon: IconCons.Facebook,
                                color: ColorConst.ButtonColor2,
                                text: 'Login with Facebook'),
                            SizedBox(
                              height: getHeight(18),
                            ),
                             Mybutton(
                              icon: IconCons.Google,
                              color: ColorConst.KprimaryColor,
                              text: 'Login with Google',
                              textColor: ColorConst.TextColor,
                            ),
                            SizedBox(height: 38)
                          ]),
                      ),
                    )
                  ]),
            )
          ],
        ));
  }
}
