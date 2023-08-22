import 'package:flutter/material.dart';

class User {
  late final String username;
  final String avatar;

  User(this.username, this.avatar);
}

class UserItem extends StatefulWidget {
  final User user;

  UserItem({required this.user});

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  bool isEditing = false;
  TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = widget.user.username;
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.white), // Add white border
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.user.avatar),
        ),
        title: isEditing
            ? TextField(
                controller: _usernameController,
              )
            : Text(widget.user.username),
        trailing: isEditing
            ? IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  setState(() {
                    isEditing = false;
                    widget.user.username = _usernameController.text;
                  });
                },
              )
            : IconButton(
                icon: Image.asset(
                  'assets/images/useritem_edit.png', // Replace with your image asset path
                  width: 14,
                  height: 14,
                ),
                onPressed: () {
                  setState(() {
                    isEditing = true;
                  });
                },
              ),
      ),
    );
  }
}
