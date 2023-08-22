import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_demo/widgets/checkbox.dart';

class CategoryCheckboxCard extends StatelessWidget {
  final Color? fillColor;

  const CategoryCheckboxCard({Key? key, this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromRGBO(59, 79, 125, 1);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(214, 227, 243, 0.5),
          ),
          BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              spreadRadius: 1.0,
              blurRadius: 2.0,
              offset: const Offset(
                -2.0,
                -1.0,
              )),
        ],
      ),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CustomCheckbox(isChecked: true),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Lorem ipsum',
                    style: TextStyle(fontSize: 14, color: textColor),
                  ),
                ],
              ))),
    );
  }
}
