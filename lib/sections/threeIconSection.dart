import 'package:flutter/material.dart';
import 'package:facebook/widgets/threeSectionButton.dart';

class  ThreeIconSection extends StatelessWidget {
  final Widget button1;
  final Widget button2;
  final Widget button3;

  ThreeIconSection({
    required this.button1,
    required this.button2,
    required this.button3
});

  Widget verticalDivider(){
    return VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button1,

          verticalDivider(),

          button2,

          verticalDivider(),

          button3,
        ],
      ),
    );
  }
}
