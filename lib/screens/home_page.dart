import 'package:flutter/material.dart';
import 'package:instagram2/widgets/add_my_story.dart';
import 'package:instagram2/widgets/bubble_stories.dart';
import 'package:instagram2/widgets/users_posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // story list
  final List people = [
    'xp_quotes',
    'iderodcomedian',
    'rd_rapdevil',
    '4pouron',
    'warriors',
    'codewithflexz',
    '_zarimdaa',
  ];

  // image list
  final List postImages = [
    'assets/story/xp.jpg',
    'assets/story/ideree.jpg',
    'assets/story/lhamaa.jpg',
    'assets/story/4pouron.jpg',
    'assets/story/warriors.jpg',
    'assets/story/codewithflexz.jpg',
    'assets/story/zarimdaa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // logo and notification
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/insta.png',
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // notification
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  top: 5,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/icons/messenger.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Stories
          Container(
            padding: const EdgeInsets.only(
              left: 10.0,
              bottom: 0,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white.withOpacity(0.1),
                  width: 1.0,
                ),
              ),
            ),
            height: 105,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // show 7 items, one for "add my story" and 6 for other people's stories
                    itemCount: people.length + 1,
                    itemBuilder: (BuildContext context, index) {
                      if (index == 0) {
                        // "add my story" section
                        return AddMyStory(
                          size: 32,
                          bgColor: Colors.red,
                          storyName: 'Your story',
                          textColor: Colors.white38,
                        );
                      } else {
                        // this is the "other people's stories" section
                        return BubbleStories(
                          text: people[index - 1],
                          imageStory: postImages[index - 1],
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),

          // posts

          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return UserPosts(
                  username: people[index],
                  imgPosts: postImages[index],
                );
              },
            ),
          ),

          //
          //
          //
          //
          //
        ],
      ),
    );
  }
}
