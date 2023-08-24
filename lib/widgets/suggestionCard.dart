
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;

  SuggestionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends
});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 10,left: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails()
        ],
      ),
    );
  }



  Widget suggestionDetails(){
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(mutualFriends),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    iconButton(
                      buttonAction: (){
                        print('friend request');
                      },
                      buttonIcon: Icons.add_moderator,
                      buttonIconColor: Colors.white,
                      buttonText: 'add friend',
                      buttonTextColor: Colors.white,
                      buttonColor: Colors.blue.shade700,
                    ),
                  blankButton(
                    buttonColor: Colors.grey.shade400,
                    buttonTextColor: Colors.black,
                    buttonText: 'Remove',
                    buttonAction: (){
                      print('remove suggestion');
                    }
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget suggestionImage(){
    return Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: Container(
            height: 230,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
              ),
              child: Image.asset(avatar,fit: BoxFit.cover,),
            )
        )
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText
}){
  return TextButton.icon(
    style: TextButton.styleFrom(
        backgroundColor: buttonColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
    ),
    icon: Icon(buttonIcon,color: buttonIconColor,),
    label: Text(buttonText,style: TextStyle(color: buttonTextColor),),
    onPressed: (){buttonAction;},
  );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
}){
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(left: 35,right: 35)
      ),
      onPressed: buttonAction,
      child: Text(buttonText,style: TextStyle(color: buttonTextColor),),
    );
  }
}
