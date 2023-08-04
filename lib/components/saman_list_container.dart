import 'package:first_task_samaan_app/components/reuseable_text.dart';
import 'package:flutter/material.dart';


class SamanListContainer extends StatelessWidget {
  String text;
  VoidCallback onTapPlus;
  VoidCallback onTapMinus;

  SamanListContainer({required this.text,required this.onTapPlus,required this.onTapMinus,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: size.width * 0.12),
      child: Column(
        children: [
          Row(
            children: [

              InkWell(
                onTap: onTapPlus,
                child: const SizedBox(
                  width: 30,
                  height: 30,
                  child: Image(image: AssetImage("images/plus.jpg"),),
                ),
              ),
              const SizedBox(width: 5.0),

              Container(
                width: size.width * 0.57,
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1A535C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Alvi Nastaleeq',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5.0),

              InkWell(
                onTap: onTapMinus,
                child: const SizedBox(
                  width: 30,
                  height: 30,
                  child: Image(image: AssetImage("images/minus.jpg"),),
                ),
              ),
            ],
          ),
          const SizedBox(height: 7.0),
        ],
      ),
    );
  }
}
