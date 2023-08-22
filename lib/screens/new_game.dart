import 'package:flutter/material.dart';
import 'package:ui_demo/widgets/submit_button.dart';
import 'package:ui_demo/widgets/team_game_info.dart';
import 'package:ui_demo/widgets/text_input_widget.dart';
import 'package:ui_demo/widgets/dropdown.dart';
import 'package:ui_demo/widgets/checkbox.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';

class NewGameScreen extends StatefulWidget {
  const NewGameScreen({super.key});

  @override
  State<NewGameScreen> createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: 'New Game'),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 1.0, color: Colors.white), // Add white border
                  ),
                ),
              ),
              Flexible(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextInputWidget(
                                    hintText: "Please Enter Game Title"),
                                const SizedBox(height: 20),
                                CustomDropdown(),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    CustomCheckbox(
                                      isChecked: true,
                                    ),
                                    const SizedBox(width: 20),
                                    const Text("Are you 18 or above")
                                  ],
                                ),
                                const SizedBox(height: 20),
                                TextInputWidget(hintText: "Enter Player Name"),
                                const SizedBox(height: 20),
                                TeamGameInfo(
                                    hintText: 'asdf'), // For Custom ListView
                                const SizedBox(height: 20),
                                TeamGameInfo(hintText: 'asdf'),
                                const SizedBox(height: 60),
                                SubmitButton(
                                  title: 'Next',
                                  onTap: () {},
                                ),
                                const SizedBox(height: 60)
                                // Container(child: CustomScrollIndicatorListView())
                              ]))))
            ]),
      ),
    ));
  }
}
