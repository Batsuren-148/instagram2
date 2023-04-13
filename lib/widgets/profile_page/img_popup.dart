import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram2/constant/constant.dart';
import 'package:instagram2/widgets/profile_page/show_my_all_posts.dart';

class ImagePopUp extends StatelessWidget {
  final String myPosts;
  final List<String> imageList;
  final int initialIndex;
  const ImagePopUp({
    Key? key,
    required this.myPosts,
    required this.imageList,
    required this.initialIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _showPopUp(context, myPosts);
      },
      onLongPressEnd: (details) => _onLongPressEnd(context),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(
              posts: myPosts,
              imageList: imageList,
              index: initialIndex,
            ),
          ),
        );
      },
      child: Container(
        color: Colors.blue,
        child: Image.network(
          myPosts,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // show popUp
  void _showPopUp(BuildContext context, index) {
    final widthDialog = MediaQuery.of(context).size.width;
    final heightDialog = MediaQuery.of(context).size.height - 265;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            height: heightDialog,
            width: widthDialog,
            child: Column(
              children: [
                // profile and username
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage:
                            NetworkImage(ConstantValues.profileImage),
                        radius: 15,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'o._batsuren',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                // image
                Container(
                  color: Colors.amber,
                  width: double.maxFinite,
                  height: 320,
                  child: Image.network(
                    index,
                    fit: BoxFit.cover,
                  ),
                ),

                // buttons
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: const Icon(
                          CupertinoIcons.chat_bubble,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: const Icon(
                          CupertinoIcons.paperplane,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // close popUp
  void _onLongPressEnd(BuildContext context) {
    Navigator.pop(context);
  }
}
