import 'package:flutter/material.dart';

class BoxStyles {
  static borderDecoration(
      BuildContext context,
      Color gradientStart,
      Color gradientEnd,
      Color border,
      Color shadowDark,
      Color shadowLight,
      double borderRaidus) {
    return BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(borderRaidus)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            gradientStart,
            gradientEnd,
          ],
        ),
        border: Border.all(color: border, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: shadowDark,
          ),
          BoxShadow(
            color: shadowLight,
            spreadRadius: -4.0,
            blurRadius: 4.0,
          )
        ]);
  }
}
