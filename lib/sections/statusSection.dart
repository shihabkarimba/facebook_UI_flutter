import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/assets.dart';

class  StatusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dulquerDp,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText:" What's on your maind?",
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none
        ),
      ),
    );
  }
}
