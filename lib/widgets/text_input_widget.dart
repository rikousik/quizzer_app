import 'package:flutter/material.dart';
import 'package:ui_demo/styles/text.dart';

import '../styles/box.dart';

class TextInputWidget extends StatefulWidget {
  TextInputWidget({required this.hintText, this.icon, super.key});

  String hintText;
  String? icon;

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      decoration: BoxStyles.borderDecoration(
          context,
          Color.fromRGBO(214, 227, 243, 0.5),
          Color.fromRGBO(255, 255, 255, 0.5),
          Colors.white,
          Color.fromRGBO(140, 146, 159, 0.2),
          Color.fromRGBO(220, 228, 248, 1),
          10),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon:
              widget.icon != null ? Image.asset(widget.icon ?? '') : null,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyles.FONTSIZE_14,
        ),
      ),
    );
  }
}
