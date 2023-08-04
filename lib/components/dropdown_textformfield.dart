import 'package:flutter/material.dart';

class TextFieldWithDropdown extends StatefulWidget {
   final String text;

  const TextFieldWithDropdown({required this.text,super.key});

  @override
  _TextFieldWithDropdownState createState() => _TextFieldWithDropdownState();
}


class _TextFieldWithDropdownState extends State<TextFieldWithDropdown> {
  String? _selectedLocation;
  final List<String> _locations = ["One", "Two", "Three", "Four"];

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: 170,
        height: 45,
        decoration: ShapeDecoration(
          color: Color(0xFF6AFB92),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),

          ),

        ),

        child: DropdownButton<String>(
            value: _selectedLocation,
            onChanged: (value) {
              setState(() {
                _selectedLocation = value;
              });
            },

          hint: Center(child: Text(widget.text,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 36),)),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 50,
            ),
            isExpanded: true,

            // Hide the default underline
            // set the color of the dropdown menu
            dropdownColor: Colors.white,


            // The list of options
            items: _locations
                .map((e) => DropdownMenuItem(
              value: e,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  e,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => _locations
                .map((e) => Center(
              child: Text(
                e,
                style:  TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ))
                .toList(),
          ),
        ),
      );
  }
}
