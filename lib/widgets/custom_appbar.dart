import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 30, top: 34, right: 30, bottom: 13),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/back_arrow.png"),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 16,
                    color: Color.fromRGBO(59, 79, 125, 1)),
              ),
            ),
          ),
          Image.asset("assets/images/appbar_logo.png"),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
