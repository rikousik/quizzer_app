import 'package:flutter/material.dart';
import 'package:ui_demo/screens/verify_screen.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';
import 'package:ui_demo/widgets/category_question_text.dart';
import 'package:ui_demo/widgets/category_checkbox_card.dart';
import 'package:ui_demo/widgets/submit_button.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // margin: EdgeInsets.only(top: 38),
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
                          SizedBox(height: 59),
                          CategoryCheckboxCard(),
                          SizedBox(height: 16),
                          CategoryCheckboxCard(),
                          SizedBox(height: 16),
                          CategoryCheckboxCard(),
                          SizedBox(height: 16),
                          CategoryCheckboxCard(),
                          SizedBox(height: 56),
                          SubmitButton(
                            title: 'Next',
                          )
                        ],
                      )))
            ],
          )),
    );
  }
}
