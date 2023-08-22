import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  final Color? fillColor;

  const SubmitButton({Key? key, this.onTap, this.title, this.fillColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(2),
          child: SizedBox(
            height: 44,
            width: 136,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromRGBO(214, 227, 243, 0.3), width: 1.5),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(140, 146, 159, 1),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(220, 228, 248, 0.5),
                    spreadRadius: -6.0,
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  title ?? '',
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
