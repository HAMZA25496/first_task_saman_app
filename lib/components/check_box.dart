// import 'package:flutter/material.dart';
// class CheckBox extends StatelessWidget {
//   const CheckBox({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     bool isChecked =false;
//     return Transform.scale(
//       scaleX: 1.2,
//       child: Theme(
//         data: ThemeData(
//             unselectedWidgetColor: Colors.grey[300]),
//         child: CheckboxListTile(
//           controlAffinity: ListTileControlAffinity.leading,
//           title: const Text(
//             'Remember me',style: TextStyle(fontSize: 12),
//           ),
//           value: isChecked,
//           onChanged: (bool? newValue) {
//             setState(() {
//               isChecked = newValue!;
//             });
//           },
//           activeColor: const Color(0xFF8950FC),
//           checkColor: Colors.white,
//         ),
//       ),
//     ),
//   }
// }
