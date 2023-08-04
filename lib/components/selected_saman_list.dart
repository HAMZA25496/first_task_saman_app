import 'package:first_task_samaan_app/constans/constants.dart';
import 'package:flutter/material.dart';

class SelectedSamanList extends StatelessWidget {
  String text;
   SelectedSamanList({required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 280,
        height: 120,
        decoration: ShapeDecoration(
        color: Color(0xFF114B1F),
    shape: RoundedRectangleBorder(
    side: BorderSide(width: 1, color: Color(0xFF6AFB92)),
    borderRadius: BorderRadius.circular(5),
    ),
    ),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,

            style: kTextStyle,),
        ],
      ),
    );
  }
}
