import 'package:flutter/material.dart';

class TeamGameInfoItem extends StatefulWidget {
  TeamGameInfoItem({required this.teamName, required this.teamInfo, super.key});

  String teamName;
  String teamInfo;
  @override
  _TeamGameInfoItemState createState() => _TeamGameInfoItemState();
}

class _TeamGameInfoItemState extends State<TeamGameInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                widget.teamName,
                style: const TextStyle(
                    color: Color.fromRGBO(59, 79, 125, 1),
                    fontFamily: "sfdisplay",
                    fontWeight: FontWeight.w500),
              )),
          Container(
            height: 44,
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(231, 238, 255, 0.5), // Left color
                  Color.fromRGBO(224, 234, 255, 0.5), // Right color
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(children: [
              Expanded(child: Text(widget.teamInfo)),
              TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/cross.png'))
            ]),
          )
        ],
      ),
    ));
  }
}
