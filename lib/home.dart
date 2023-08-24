import 'package:facebook/assets.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/threeSectionButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/sections/threeIconSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:facebook/widgets/postCart.dart';

class Home extends StatelessWidget {

  Widget divider({double? thickness}){
    return Divider(
      thickness: thickness,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonAction: (){
                print('to search screen');
              },
              buttonIcon: Icons.search,
            ),
            CircularButton(
              buttonAction: (){
                print('to message screen');
              },
              buttonIcon: Icons.messenger_outline_outlined,
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            divider(thickness: 1),
            ThreeIconSection(
              button1: threeIconButton(
                buttonAction: (){
                  print('go to live page');
                },
                buttonColor: Colors.red,
                buttonIcon: Icons.live_tv,
                buttonText: Text('Live',style: TextStyle(color: Colors.black),),
              ),
              button2: threeIconButton(
                buttonAction: (){
                  print('go to profile');
                },
                buttonColor: Colors.green,
                buttonIcon: Icons.photo_library,
                buttonText: Text('Photos',style: TextStyle(color: Colors.black),),
              ),
              button3: threeIconButton(
                buttonAction: (){
                  print('go to rooms');
                },
                buttonColor: Colors.purple,
                buttonIcon: Icons.video_call,
                buttonText: Text('Rooms',style: TextStyle(color: Colors.black),),
              ),
            ),
            divider(thickness: 10),
            RoomSection(),
            divider(thickness: 10),
            StorySection(),
            divider(thickness: 10),
            PostCard(
              avatar: mohanlalDp,
              avatarName:"Mohan Lal",
              publishdAt:'5h',
              titleTextFromHome: 'Arattu \nsoon in theaters',
              postImage: mohanlalPost,
              showBlueTick: true,
              likeData: '10k',
              commentData: '2.5k',
              shareData: '500',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: salahDp,
              avatarName:"Muhammed Salah",
              publishdAt:'23h',
              titleTextFromHome: 'New beginnig \nTo eternity',
              postImage: salahPost,
              showBlueTick: true,
              likeData: '30k',
              commentData: '4.5k',
              shareData: '700',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: mammoottyDp,
              avatarName:"Mammooty",
              publishdAt:'23h',
              postImage: mammoottyPost,
              showBlueTick: true,
              likeData: '100k',
              commentData: '25.5k',
              shareData: '10K',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: ronaldoDp,
              avatarName:"ChristianoRonaldo",
              publishdAt:'1d',
              titleTextFromHome: 'Chillig with homies',
              postImage: ronaldoPost,
              showBlueTick: true,
              likeData: '400k',
              commentData: '8.5k',
              shareData: '4k',
            ),
            divider(
              thickness: 10,
            ),
            SuggestionSection(),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: chakkochanDp,
              avatarName:"Kunjakkogopan",
              publishdAt:'2d',
              postImage: chakkochanPost,
              showBlueTick: true,
              likeData: '400k',
              commentData: '8.5k',
              shareData: '4k',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: prithvirajDp,
              avatarName:"Prithwiraj sukumaran",
              publishdAt:'1d',
              titleTextFromHome: 'Rocking upcoming days',
              postImage: prithvirajPost,
              showBlueTick: true,
              likeData: '400k',
              commentData: '8.5k',
              shareData: '4k',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: messiDp,
              avatarName:"Lionelmessi",
              publishdAt:'1d',
              titleTextFromHome: 'hola hermanos',
              postImage: messiPost,
              showBlueTick: true,
              likeData: '400k',
              commentData: '8.5k',
              shareData: '4k',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: rahulGandhiDp,
              avatarName:"Rahul Gandhi",
              publishdAt:'1d',
              titleTextFromHome : 'The day of history',
              postImage: rahulGandhiPpost,
              showBlueTick: true,
              likeData: '400k',
              commentData: '8.5k',
              shareData: '4k',
            ),
            divider(
              thickness: 10,
            ),
            PostCard(
              avatar: vijayanDp,
              avatarName:"IM Vijayan",
              publishdAt:'1d',
              titleTextFromHome: 'blessing moments with a legend',
              postImage: vijayanPost,
              showBlueTick: true,
              likeData: '400k',
              commentData: '8.5k',
              shareData: '4k',
            ),
            divider(
              thickness: 10,
            ),
          ],
        ),
    );
  }
}
