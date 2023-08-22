import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String _selectedValue = 'Option 1'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(231, 238, 255, 127),
        border: Border.all(color: const Color.fromRGBO(231, 238, 255, 127)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DropdownButton<String>(
              value: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
              icon: Image.asset('assets/images/down_arrow.png'),
              isExpanded: true,
              underline: SizedBox(), // Remove the default underline
              items: <String>[
                'Option 1',
                'Option 2',
                'Option 3',
                'Option 4',
                'Option 5',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
