import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram2/constant/constant.dart';

class MyPosts extends StatelessWidget {
  final String username;
  final String imgPosts;

  const MyPosts({
    super.key,
    required this.username,
    required this.imgPosts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // post header
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(ConstantValues.profileImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          username,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          "Bond University",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // menu
              const Icon(
                Icons.more_horiz,
                color: Colors.white,
              )
            ],
          ),
        ),

        // post image
        Container(
          height: 360,
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              image: NetworkImage(imgPosts),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //  post below reaction comment
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Icon(
                      CupertinoIcons.chat_bubble,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.paperplane,
                    color: Colors.white,
                  ),
                ],
              ),
              const Icon(
                CupertinoIcons.bookmark,
                color: Colors.white,
              ),
            ],
          ),
        ),

        //  liked by
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Row(
            children: [
              const Text(
                "Liked by ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Text(
                username,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const Text(
                " and ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const Text(
                "others",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        //  caption
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: username,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const TextSpan(
                  text: " Ready to knock the approaching finals merrily.",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
