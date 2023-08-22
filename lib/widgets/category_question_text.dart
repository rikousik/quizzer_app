import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryQuestionText extends StatelessWidget {
  final Color? fillColor;

  const CategoryQuestionText({Key? key, this.fillColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromRGBO(59, 79, 125, 1);
    return SizedBox(
      height: 155,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 18,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                  width: MediaQuery.of(context).size.width,
                  height: 126,
                  child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                        alignment:
                            Alignment.centerLeft, // Align the text to the left
                        child: Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout?',
                          style: TextStyle(
                              fontSize: 14, color: textColor, height: 1.8),
                        ),
                      ))),
            )),
        Positioned(
          top: 0,
          child: SizedBox(
              width: 133,
              height: 36,
              child: Image.asset("assets/images/category_question_back.png",
                  fit: BoxFit.cover)),
        ),
        const Positioned(
            top: 11,
            child: Text(
              'Question',
              style: TextStyle(fontSize: 14, color: textColor),
            )),
      ]),
    );
  }
}
