import 'package:flutter/material.dart';
import 'package:ui_demo/styles/box.dart';

class CustomCheckbox extends StatefulWidget {
  CustomCheckbox({required this.isChecked, super.key});

  bool isChecked = false;
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  //bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isChecked = !widget.isChecked;
        });
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: widget.isChecked
            ? BoxStyles.borderDecoration(
                context,
                Theme.of(context).primaryColorDark,
                Theme.of(context).primaryColorLight,
                Colors.white,
                Color.fromRGBO(140, 146, 159, 1),
                Colors.white,
                6)
            : BoxStyles.borderDecoration(
                context,
                Color.fromRGBO(214, 227, 243, 0.5),
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(214, 227, 243, 0.8),
                Color.fromRGBO(140, 146, 159, 1),
                Colors.white,
                6),
        child: widget.isChecked
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              )
            : null,
      ),
    );
  }
}
