import 'package:fastfood/core/components/Size_config.dart';
import 'package:fastfood/core/components/boxdecaration.dart';
import 'package:fastfood/widgets/Mytext.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int index;
  final VoidCallback ontap1;
  final VoidCallback ontap2;
  const Counter({required this.ontap1, required this.ontap2,required this.index,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(40),
      width: getHeight(140),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(child: Mytext.mytext(text: '-'), onTap: ontap1,),
          Mytext.mytext(text: index.toString()),
          InkWell(child: Mytext.mytext(text: '+'),onTap: ontap2,)
        ],
      ),
    );
  }
}
