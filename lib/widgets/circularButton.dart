import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  CircularButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black87,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          color: iconColor,
          iconSize: 25,
          icon: Icon(buttonIcon),
          onPressed: buttonAction,
        ),
      ),
    );
  }
}
