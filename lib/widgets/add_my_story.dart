import 'package:flutter/material.dart';
import 'package:instagram2/constant/constant.dart';

class AddMyStory extends StatelessWidget {
  final String storyName;
  final double size;
  final Color bgColor;
  final Color textColor;
  final String profileImage = ConstantValues.profileImage;
  AddMyStory({
    super.key,
    required this.size,
    required this.bgColor,
    required this.storyName,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        right: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 5),
                child: CircleAvatar(
                  backgroundColor: bgColor,
                  backgroundImage: NetworkImage(profileImage),
                  radius: size,
                ),
              ),
              const Positioned(
                right: 5,
                bottom: 5,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 12,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Text(
            storyName,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
