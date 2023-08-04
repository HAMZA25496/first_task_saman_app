// import 'package:flutter/material.dart';
//
// class LeadingDropdown extends StatefulWidget {
//   const LeadingDropdown({Key? key}) : super(key: key);
//
//   @override
//   State<LeadingDropdown> createState() => _LeadingDropdownState();
// }
//
// class _LeadingDropdownState extends State<LeadingDropdown> {
//   String? _selectedLocation;
//
//   final List<String> _locations = ["One", "Two", "Three", "Four"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TextFormField(
//         onChanged: (value){
//           _selectedLocation = value;
//         },
//         decoration: InputDecoration(
//           prefixIcon:  DropdownButton<String>(
//             value: _selectedLocation,
//             onChanged: (value) {
//
//               setState(() {
//                 _selectedLocation = value;
//               });
//             },
//
//             icon: const Icon(
//               Icons.arrow_drop_down,
//               color: Colors.black,
//               size: 50,
//             ),
//             isExpanded: true,
//
//             // Hide the default underline
//             // set the color of the dropdown menu
//             dropdownColor: Colors.white,
//
//
//             // The list of options
//             items: _locations
//                 .map((e) => DropdownMenuItem(
//               value: e,
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   e,
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               ),
//             ))
//                 .toList(),
//
//             // Customize the selected item
//             selectedItemBuilder: (BuildContext context) => _locations
//                 .map((e) => Center(
//               child: Text(
//                 e,
//                 style:  TextStyle(
//                     fontSize: 26,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold),
//               ),
//             ))
//                 .toList(),
//           ),
//
//
//
//         ),
//       ),
//     );
//   }
// }
//
