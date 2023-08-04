import 'package:flutter/material.dart';

class ReuseableText extends StatelessWidget {
  String text;
  Color? color;
   ReuseableText({required this.text,  this.color,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
      style: TextStyle(fontSize:width * 0.10 ,color:color,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
