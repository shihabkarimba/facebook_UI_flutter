import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StorySection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'add to story',
            storyAvatar: dulquerDp,
            story: dulquerDp,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'Lionel messi',
            storyAvatar: messiDp,
            story: messiPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Kunjakko Gopan',
            storyAvatar: chakkochanDp,
            story: chakkochanPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Rahul Gandhi',
            storyAvatar: rahulGandhiDp,
            story: rahulGandhiPpost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Muhammed salah',
            storyAvatar: salahDp,
            story: salahPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'I M vijayan',
            storyAvatar: vijayanDp,
            story: vijayanPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ]
      ),
    );
  }
}
