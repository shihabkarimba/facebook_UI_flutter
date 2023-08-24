import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/suggestionCard.dart';


class SuggestionSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People you may know'),
            trailing: IconButton(
              onPressed: (){
                print('Icon button pressed');
              },
              icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
            ),
          ),
          Container(
            height: 370,
            child: ListView(
             scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: imageOne,
                  name: 'Moto Garage',
                  mutualFriends: '4 mutual friends',
                ),
                SuggestionCard(
                  avatar: imageTwo,
                  name: 'farhan faru',
                  mutualFriends: '4 mutual friends',
                ),
                SuggestionCard(
                  avatar: imageThree,
                  name: 'Ottakam',
                  mutualFriends: '4 mutual friends',
                ),
                SuggestionCard(
                  avatar: imageFour,
                  name: 'Vali teams',
                  mutualFriends: '10 mutual friends',
                ),
                SuggestionCard(
                  avatar: imageFive,
                  name: 'me',
                  mutualFriends: '4 mutual friends',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
