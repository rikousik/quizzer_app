import 'package:flutter/material.dart';
class SearchBarWidget extends StatefulWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  
  const SearchBarWidget({Key? key,this.onChanged , required this.hintText}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}
class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 1.5),
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
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement your search functionality here
            },
          ),
        ],
      ),
    );
  }
}
