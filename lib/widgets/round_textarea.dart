import 'package:flutter/material.dart';

class RoundTextArea extends StatelessWidget {
  final String text;

  RoundTextArea({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [Color(0xFFE7EEFF), Color(0xFFE0EAFF)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          //stops: [0.5, 0.5],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFEAEFFF),
            blurRadius: 16.0,
            offset: Offset(-10, -10),
          ),
          BoxShadow(
            color: Color(0xFFC2CCEB),
            blurRadius: 20.0,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 14.0, color: Color(0xFF3B4F7D)),
      ),
    );
  }
}
