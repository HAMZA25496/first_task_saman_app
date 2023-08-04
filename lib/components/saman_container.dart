import 'package:flutter/material.dart';

class SamanContainer extends StatelessWidget {
  String image;

  SamanContainer({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width *0.16,
        height: size.width *0.16,

        child: Image(
          image: AssetImage(
            image,
          ),
        ),
    );
  }
}
