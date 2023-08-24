import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';


class StoryCard extends StatelessWidget{
  final String labelText;
  final String story;
  final String storyAvatar;
  final bool createStoryStatus;
  final bool? displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.storyAvatar,
    this.createStoryStatus = false,
    this.displayBorder = false
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children:[
          Positioned(
            left: 3,
            top: 10,
            child: createStoryStatus ? CircularButton(
              buttonIcon: Icons.add,
              buttonAction: (){
                print('search button clicked');
              },
              iconColor: Colors.blue,
            )
                : Avatar(
              displayStatus: false,
              displayImage: storyAvatar,
              displayBorder: displayBorder,
              avatarWidth: 35,
              avatarHeight: 35,
            )
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]
      ),
    );
  }
}
