import 'package:flutter/material.dart';
import 'package:ui_demo/styles/box.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({this.isChecked = false, super.key});

  final bool isChecked;
  @override
  State createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  void initState() {
    _isChecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !widget.isChecked;
        });
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: _isChecked
            ? BoxStyles.borderDecoration(
                context,
                Theme.of(context).primaryColorDark,
                Theme.of(context).primaryColorLight,
                Colors.white,
                const Color.fromRGBO(140, 146, 159, 1),
                Colors.white,
                6)
            : BoxStyles.borderDecoration(
                context,
                const Color.fromRGBO(214, 227, 243, 0.5),
                const Color.fromRGBO(255, 255, 255, 0.5),
                const Color.fromRGBO(214, 227, 243, 0.8),
                const Color.fromRGBO(140, 146, 159, 1),
                Colors.white,
                6),
        child: _isChecked
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
