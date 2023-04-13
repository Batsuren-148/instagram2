// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:instagram2/widgets/profile_page/story_screen.dart';

class storyArchives extends StatelessWidget {
  final String storyTitle;
  final String storyImage;
  const storyArchives(
      {super.key, required this.storyTitle, required this.storyImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return StoryScreen(
                  image: storyImage,
                  title: storyTitle,
                );
              },
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage(storyImage),
                  ),
                ),
              ],
            ),

            // story title
            Container(
              padding: const EdgeInsets.only(top: 3),
              width: 50,
              child: Text(
                storyTitle,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
