import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifySmsInput extends StatelessWidget {
  final Color? fillColor;

  const VerifySmsInput({Key? key, this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        color: Color.fromARGB(1, 220, 228, 248),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(140, 146, 159, 0.2),
          ),
          BoxShadow(
            color: Color.fromRGBO(220, 228, 248, 1),
            spreadRadius: -4.0,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: SizedBox(
          height: 44,
          width: 44,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(border: InputBorder.none),
            style: TextStyle(fontSize: 14),
          )),
    );
  }
}
