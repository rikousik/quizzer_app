import 'package:flutter/material.dart';
import 'package:ui_demo/screens/story_window.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/submit_button.dart';
import '../widgets/useritem_widget.dart';

class ChoosePlayers extends StatefulWidget {
  ChoosePlayers({super.key});

  @override
  State<ChoosePlayers> createState() => _ChoosePlayersState();
}

class _ChoosePlayersState extends State<ChoosePlayers> {
  final List<User> users = [
    User('John', 'assets/images/avatar_Ellipse.png'),
    User('Alice', 'assets/images/avatar_Ellipse.png'),
    User('Bob', 'assets/images/avatar_Ellipse.png'),
    User('John', 'assets/images/avatar_Ellipse.png'),
    User('Alice', 'assets/images/avatar_Ellipse.png'),
    User('Bob', 'assets/images/avatar_Ellipse.png'),
    User('John', 'assets/images/avatar_Ellipse.png'),
    User('Alice', 'assets/images/avatar_Ellipse.png'),
    // Add more users here
  ];
  List<User> filteredUsers = [];

  @override
  void initState() {
    super.initState();
    filteredUsers = users;
  }

  void filterUsers(String query) {
    setState(() {
      filteredUsers =
          users.where((user) => user.username.contains(query)).toList();
    });
  }

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
                CustomAppBar(title: 'Choose Players'),
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
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchBarWidget(
                          onChanged: filterUsers, hintText: "Search Name"),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        // Use Expanded for the list of user items
                        height: MediaQuery.of(context).size.height / 1.7,
                        child: ListView.builder(
                          itemCount: filteredUsers.length,
                          itemBuilder: (context, index) {
                            return UserItem(user: filteredUsers[index]);
                          },
                        ),
                      ),
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
                          title: "Resume",
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
