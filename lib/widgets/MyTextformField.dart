import 'package:fastfood/core/constants/constant.dart';
import 'package:flutter/material.dart';

class MytextInput extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final FormFieldValidator<String>? validator;
  const MytextInput({required this.validator,required this.controller, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: PaddingMarginConst.TextInputPadding,
        hintText: text,
        fillColor: ColorConst.TextInputColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(RadiusConst.Small),
        ),
      ),
      validator: validator,
    );
  }
}
