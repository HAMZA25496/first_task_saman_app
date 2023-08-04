import 'package:flutter/material.dart';

class ReuseableTextField extends StatelessWidget {
  String text;

  ReuseableTextField({required this.text});

  @override
  Widget build(BuildContext context) {
     double size =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Container(
            width: 220,
            height: 40,
            decoration: ShapeDecoration(
              color: Color(0xFF66FF00),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),

            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
              ),
            ),

          ),
          Text(
            text,
            style: TextStyle(fontSize: size* 0.11, color: Color(0xFF6AFB92)),
          ),
        ],
      ),
    );
  }
}
