import 'package:fastfood/core/components/Borderradius.dart';
import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/face_book_googlelogo.dart';
import 'package:fastfood/core/constants/constant.dart';
import 'package:fastfood/models/userdata.dart';
import 'package:fastfood/models/usermodel.dart';
import 'package:fastfood/widgets/LoginChangerBUtton.dart';
import 'package:fastfood/widgets/MyButton.dart';
import 'package:fastfood/widgets/MyTextformField.dart';
import 'package:fastfood/widgets/Mysnackbar.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Registiration_Page extends StatefulWidget {
  const Registiration_Page({Key? key}) : super(key: key);

  @override
  State<Registiration_Page> createState() => _Registiration_PageState();
}

class _Registiration_PageState extends State<Registiration_Page> {
  Color _loginColor = ColorConst.ButtonColor;
  int changer = 0;

  final _loginkey = GlobalKey<FormState>();
  final _signupkey = GlobalKey<FormState>();

  final TextEditingController _usename_mobile = TextEditingController();
  final TextEditingController _Full_name = TextEditingController();
  final TextEditingController _confirm_password = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConst.BackGrounColor,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: MyBorderRadiusConatiner.DecorationBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: PaddingMarginConst.Huge,
                          child: IconCons.Logo,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 40, left: 50, right: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LoginChangerButton(
                                  ontap: () {
                                    setState(() {
                                      changer = 0;
                                    });
                                  },
                                  text: 'Log in',
                                  color: changer == 0
                                      ? _loginColor
                                      : Colors.white),
                              SizedBox(
                                width: getWidth(125),
                              ),
                              LoginChangerButton(
                                  ontap: () {
                                    setState(() {
                                      changer = 1;
                                    });
                                  },
                                  text: 'Sing-up',
                                  color: changer == 1
                                      ? _loginColor
                                      : Colors.white),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(20),
            ),
            changer == 0
                ? Expanded(
                    flex: 7,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Form(
                              key: _loginkey,
                              child: Padding(
                                padding: PaddingMarginConst.Huge,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MytextInput(
                                        validator: (text) {
                                          if (text!.isEmpty) {
                                            return 'fill the gap';
                                          }
                                        },
                                        controller: _usename_mobile,
                                        text: 'Username, Mobile number'),
                                    MytextInput(
                                        validator: (text) {
                                          if (text!.isEmpty) {
                                            return 'fill the gap';
                                          } else if (text.length < 8) {
                                            return 'enter 8 lettes';
                                          }
                                        },
                                        controller: _password,
                                        text: 'Password'),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 40),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Mybutton(
                                        onpressed: _onpressedSecond,
                                        color: ColorConst.ButtonColor,
                                        text: 'Login'),
                                    SizedBox(
                                        height: 40,
                                        child: Center(
                                          child: Mytext.mytext(
                                              text: 'Or',
                                              fontWeight: FontweightConst.w6,
                                              color: ColorConst.TextColor),
                                        )),
                                    Mybutton(
                                        onpressed: () {},
                                        icon: IconCons.Facebook,
                                        color: ColorConst.ButtonColor2,
                                        text: 'Login with Facebook'),
                                    SizedBox(
                                      height: getHeight(18),
                                    ),
                                    Mybutton(
                                      onpressed: () {},
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
                : Expanded(
                    flex: 7,
                    child: Padding(
                      padding: PaddingMarginConst.Huge,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Mytext.mytext(
                                  text: 'Register',
                                  color: ColorConst.ButtonColor,
                                  size: FontSize.ExtraLarge,
                                  fontWeight: FontweightConst.bold),
                              SizedBox(
                                width: getWidth(50),
                              ),
                              LogoGooge_Facebook(icon: IconCons.Facebook),
                              SizedBox(
                                width: getWidth(10),
                              ),
                              LogoGooge_Facebook(icon: IconCons.Google)
                            ],
                          ),
                          SizedBox(
                            height: getHeight(41),
                          ),
                          Form(
                              key: _signupkey,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MytextInput(
                                      validator: (v) {},
                                      controller: _Full_name,
                                      text: 'Full name'),
                                  SizedBox(
                                    height: getHeight(20),
                                  ),
                                  MytextInput(
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'fill the gap';
                                        } else if (!RegExp(
                                                r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                            .hasMatch(v)) {
                                          return 'please enter number';
                                        }
                                      },
                                      controller: _usename_mobile,
                                      text: 'Mobile number'),
                                  SizedBox(
                                    height: getHeight(20),
                                  ),
                                  MytextInput(
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'fill the gap';
                                        } else if (v.length < 8) {
                                          return 'enter 8 letters';
                                        }
                                      },
                                      controller: _password,
                                      text: 'Password'),
                                  SizedBox(
                                    height: getHeight(20),
                                  ),
                                  MytextInput(
                                      validator: (v) {
                                        if (v != _password.text) {
                                          return 'confirm password is wrong';
                                        } else if (v!.isEmpty) {
                                          return 'fill the gap';
                                        }
                                      },
                                      controller: _confirm_password,
                                      text: 'Confirm password'),
                                  SizedBox(
                                    height: getHeight(60),
                                  ),
                                  Row(
                                    children: [
                                      Mybutton(
                                        onpressed: _onpressedRegister,
                                        color: ColorConst.ButtonColor,
                                        text: 'Sign-up',
                                        width: getWidth(183),
                                      ),
                                      SizedBox(
                                        width: getWidth(22),
                                      ),
                                      Mytext.mytext(
                                          text: 'Already a\nMember? Login',
                                          fontWeight: FontweightConst.w1,
                                          color: ColorConst.TextColor,
                                          size: FontSize.Small),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
          ],
        ));
  }

  _onpressedRegister() {
    if (_signupkey.currentState!.validate()) {
      String fullname = _Full_name.text.trim();
      String mobilenumber = _usename_mobile.text.trim();
      String password = _password.text.trim();
      bool _isTrue = true;

      for (Usermodel users in Userdata.userlist) {
        if (mobilenumber == users.mobile_number) {
          _isTrue = false;
        }
      }

      if (_isTrue == true) {
        Userdata.userlist.add(Usermodel(
            full_name: fullname,
            mobile_number: mobilenumber,
            passoword: password));
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      } else {
        MyMessanger.showMessanger(
            context, 'Ther is a user with this number please try again');
      }
    }
  }

  _onpressedSecond() {
    if (_loginkey.currentState!.validate()) {
      String fullname = _usename_mobile.text.trim();
      String password = _password.text.trim();
      bool _check = false;

      for (Usermodel users in Userdata.userlist) {
        if (users.full_name == fullname && users.passoword == password) {
          Navigator.popAndPushNamed(
            context,
            '/main',
          );
          _check = true;
        }
      }

      if (_check == false) {
        MyMessanger.showMessanger(context, 'Wrong email or password');
      }
    }
  }
}
