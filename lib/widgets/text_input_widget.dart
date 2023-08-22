import 'package:flutter/material.dart';

import '../styles/box.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({required this.hintText, this.icon, super.key});

  final String hintText;
  final String? icon;

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
          const Color.fromRGBO(214, 227, 243, 0.5),
          const Color.fromRGBO(255, 255, 255, 0.5),
          Colors.white,
          const Color.fromRGBO(140, 146, 159, 0.2),
          const Color.fromRGBO(220, 228, 248, 1),
          10),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon:
              widget.icon != null ? Image.asset(widget.icon ?? '') : null,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontFamily: "sfdisplay",
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(59, 79, 125, 1),
          ),
        ),
      ),
    );
  }
}
