import 'package:flutter/material.dart';
import 'package:ui_demo/widgets/team_game_info_item.dart';

class TeamGameInfo extends StatefulWidget {
  TeamGameInfo({required this.hintText, this.icon, super.key});

  String hintText;
  String? icon;

  @override
  State<TeamGameInfo> createState() => _TeamGameInfoState();
}

class _TeamGameInfoState extends State<TeamGameInfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: 192,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        // color: const Color.fromRGBO(220, 228, 248, 1),
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
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 0),
        shrinkWrap: true,
        children: [
          TeamGameInfoItem(
            teamName: "Team1",
            teamInfo: "Champ1, Champ2, Champ3",
          ),
          TeamGameInfoItem(
            teamName: "Team2",
            teamInfo: "Champ1, Champ2, Champ3",
          ),
          TeamGameInfoItem(
            teamName: "Team3",
            teamInfo: "Champ1, Champ2, Champ3",
          ),
        ],
      ),
    ));
  }
}
