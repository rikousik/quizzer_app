import 'package:flutter/material.dart';
import 'package:ui_demo/screens/verify_screen.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';
import 'package:ui_demo/widgets/category_question_text.dart';
import 'package:ui_demo/widgets/category_checkbox_card.dart';
import 'package:ui_demo/widgets/submit_button.dart';
import 'package:ui_demo/widgets/round_textarea.dart';

class OfflineCategoryScreen extends StatefulWidget {
  const OfflineCategoryScreen({super.key});

  @override
  State<OfflineCategoryScreen> createState() => _OfflineCategoryScreenState();
}

class _OfflineCategoryScreenState extends State<OfflineCategoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: AlignmentDirectional.topStart,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
          child: Column(
            children: [
              CustomAppBar(title: 'Category1'),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.0),
                  child: Container(
                      margin: EdgeInsets.only(top: 38),
                      child: Column(
                        children: [
                          CategoryQuestionText(),
                          SizedBox(height: 50),
                          RoundTextArea(text: "123123"),
                          SizedBox(height: 56),
                          SizedBox(height: 56),
                          SubmitButton(
                            title: 'Back',
                          )
                        ],
                      )))
            ],
          )),
    );
  }
}
