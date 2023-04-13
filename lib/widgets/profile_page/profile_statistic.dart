import 'package:flutter/material.dart';
import 'package:instagram2/widgets/profile_page/add_archive_story.dart';
import 'package:instagram2/widgets/add_my_story.dart';
import 'package:instagram2/widgets/profile_page/profile_edit.dart';
import 'package:instagram2/widgets/profile_page/story_archivies.dart';

class ProfileStatic extends StatelessWidget {
  final BuildContext context;

  ProfileStatic({super.key, required this.context});

  // story archive lists
  final List storyArchive = [
    '😂',
    'Me',
    'Stan forever',
  ];

  final List storyImages = [
    'https://images.unsplash.com/photo-1562832135-14a35d25edef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1245&q=80',
    'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];

  // show bottom sheet of edit profile
  void _showEditProfile() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (BuildContext context) {
        return ProfileEdit(context: context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width / 2 - 50;
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // profile image
                Row(
                  children: [
                    AddMyStory(
                      size: 35,
                      bgColor: Colors.green,
                      storyName: 'Ө.Батсүрэн',
                      textColor: Colors.white,
                    ),
                  ],
                ),

                // followers counting
                Row(
                  children: [
                    Column(
                      children: const [
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: const [
                        Text(
                          '199',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      children: const [
                        Text(
                          '196',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                  ],
                ),
              ],
            ),
          ),

          // bio text
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
              top: 5,
              bottom: 10,
            ),
            child: const Text(
              'Your only limit is your mind.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),

          // links
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
              top: 0,
              bottom: 10,
            ),
            child: Row(
              children: [
                Transform.rotate(
                  angle: 100,
                  child: Icon(
                    Icons.link,
                    color: Colors.blue[100],
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  'ngl.link/ggbta',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blue[100],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // edit profile and share profile button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // edit profile button
                GestureDetector(
                  onTap: _showEditProfile,
                  child: Container(
                    width: buttonWidth,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 22, 22, 22),
                    ),
                    child: const Text(
                      'Edit profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Share profile button
                GestureDetector(
                  onTap: _showEditProfile,
                  child: Container(
                    width: buttonWidth,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 22, 22, 22),
                    ),
                    child: const Text(
                      'Share profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // suggest people
                GestureDetector(
                  onTap: _showEditProfile,
                  child: Container(
                    width: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 22, 22, 22),
                    ),
                    child: const Icon(
                      Icons.person_add_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // stories archive
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 15,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyArchive.length + 1,
                itemBuilder: (BuildContext context, index) {
                  if (index == storyArchive.length) {
                    // add new story archive button
                    return const AddArchive();
                  } else {
                    // stories
                    return storyArchives(
                      storyTitle: storyArchive[index],
                      storyImage: storyImages[index],
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
