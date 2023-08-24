import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/avatar.dart';

class RoomSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
         createRoomButton(),
         Avatar(displayImage: dulquerDp,displayStatus: true,),
          Avatar(displayImage: mammoottyDp,displayStatus: true,),
          Avatar(displayImage: prithvirajDp,displayStatus: true),
          Avatar(displayImage: chakkochanDp,displayStatus: true),
          Avatar(displayImage: messiDp,displayStatus: true),
          Avatar(displayImage: mohanlalDp,displayStatus: true),
          Avatar(displayImage: rahulGandhiDp,displayStatus: true),
          Avatar(displayImage: ronaldoDp,displayStatus: true),
          Avatar(displayImage: salahDp,displayStatus: true),
          Avatar(displayImage: vijayanDp,displayStatus: true)
        ],
      ),
    );
  }


  Widget createRoomButton(){
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.blue.shade100)
        ),
        icon: Icon(Icons.video_call,color: Colors.pink,),
        onPressed: (){
          print('go to rooms');
        },
        label: Text('create \nrooms'),
      ),
    );
  }
}
