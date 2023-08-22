import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/round_textarea.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/submit_button.dart';
import '../widgets/useritem_widget.dart';

class StoryWindow extends StatefulWidget {
  StoryWindow({super.key});

  @override
  State<StoryWindow> createState() => _StoryWindowState();
}

class _StoryWindowState extends State<StoryWindow> {
  final String Story =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long fact that a reader will be distracted by the readable of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long fact that a reader will be distracted by the readable of a page when looking at its layout?";
  final String Question =
      "Rreader will be distracted by the readable of a page when looking at its layout?";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            alignment: AlignmentDirectional.topStart,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 1.0, color: Colors.white), // Add white border
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                CustomAppBar(title: 'Story Window'),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1.0, color: Colors.white), // Add white border
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          // Use Expanded for the list of user items
                          height: MediaQuery.of(context).size.height / 1.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Story :",
                                style: TextStyle(
                                    fontSize: 14.0, color: Color(0xFF3B4F7D)),
                              ),
                              RoundTextArea(
                                text: Story,
                              ),
                              Text(
                                "Question :",
                                style: TextStyle(
                                    fontSize: 14.0, color: Color(0xFF3B4F7D)),
                              ),
                              RoundTextArea(
                                text: Question,
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom:
                                52), // Add 20 pixels padding from the bottom
                        child: SubmitButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StoryWindow(),
                              ),
                            );
                          },
                          title: "Next",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
