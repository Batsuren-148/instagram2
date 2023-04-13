import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String imageStory;
  const BubbleStories({
    super.key,
    required this.text,
    required this.imageStory,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        right: 15,
      ),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
              border: Border.all(
                color: Colors.transparent,
                width: 2,
              ),
              gradient: const LinearGradient(
                colors: [Colors.pink, Colors.red, Colors.yellow, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(1.8),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage(imageStory),
                    radius: 30,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 65,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white38,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
