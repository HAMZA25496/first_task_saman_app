import 'package:first_task_samaan_app/components/reuseable_text.dart';
import 'package:first_task_samaan_app/constans/constants.dart';
import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  Color color;
   String text;
   ReuseableContainer({required this.color,required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        height: 40,
    decoration: ShapeDecoration(
    color: color,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
    ),
    ),
      child: Center(child: Text(text,style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),)),
    );
  }
}
