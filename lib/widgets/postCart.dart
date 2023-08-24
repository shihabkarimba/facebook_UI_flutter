import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTIck.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/widgets/threeSectionButton.dart';

import '../sections/threeIconSection.dart';



class  PostCard extends StatelessWidget {
  final String avatar;
  final String avatarName;
  final String publishdAt;
  final String? titleTextFromHome;
  final String? postImage;
  final bool showBlueTick;
  final String likeData;
  final String commentData;
  final String shareData;

  PostCard({
    required this.avatar,
    required this.avatarName,
    required this.publishdAt,
    this.titleTextFromHome,
    this.postImage,
    this.showBlueTick = false,
    required this.likeData,
    required this.commentData,
    required this.shareData
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postCardHeader(),
        if (titleTextFromHome != null) titleSection(titleTextFromHome!),
        if (postImage != null) imageSection(postImage!),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        ThreeIconSection(
          button1: threeIconButton(
            buttonAction: (){
              print('liked this post');
            },
            buttonColor: Colors.grey[700],
            buttonIcon: Icons.thumb_up_alt_outlined,
            buttonText: Text('Like',style: TextStyle(color: Colors.grey[700]),),
          ),
          button2: threeIconButton(
            buttonAction: (){
              print('go to profile');
            },
            buttonColor: Colors.grey[700],
            buttonIcon: Icons.message_outlined,
            buttonText: Text('Comment',style: TextStyle(color: Colors.grey[700]),),
          ),
          button3: threeIconButton(
            buttonAction: (){
              print('go to rooms');
            },
            buttonColor: Colors.grey[700],
            buttonIcon: Icons.share_outlined,
            buttonText: Text('Share',style: TextStyle(color: Colors.grey[700]),),
          ),
        ),
      ],
    );
  }







  Widget postCardHeader(){
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(avatarName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishdAt),
          SizedBox(width: 5,),
          Icon(Icons.public,color: Colors.grey[700],size: 15,)
        ],
      ),
      trailing: IconButton(
        onPressed: (){
          print('open more menu');
        },
        icon: Icon(Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget titleSection(String titleText) {
    return titleText != null && titleText != " "
       ? Container(
      margin: EdgeInsets.only(left: 30,top: 10,bottom: 20),
      alignment: Alignment.topLeft, // Aligns the child to the top left corner
      child: Text(
        titleText,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    )
        : const SizedBox();
  }


  Widget imageSection(String postImage){
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget footerSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                displyText(label: likeData),
              ],
            ),
          ),


          Container(
            child: Row(
              children: [
                displyText(label: commentData),
                SizedBox(width: 5,),
                displyText(label: 'Comments'),

                SizedBox(width: 10,),

                displyText(label: shareData),
                SizedBox(width: 5,),
                displyText(label:'share'),
                SizedBox(width: 10,),
                Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                  avatarHeight: 25,
                  avatarWidth: 25,
                ),
                IconButton(
                    onPressed: (){
                      print('drop down');
                    },
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700],)
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displyText({required String label,}){
    return Text(
      label ?? '',// label == null ? " " : label,
      style: TextStyle(
          color: Colors.grey[700]
      ),
    );
  }

}
