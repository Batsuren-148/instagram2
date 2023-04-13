import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram2/constant/constant.dart';

class StoryScreen extends StatefulWidget {
  final String image;
  final String title;
  const StoryScreen({super.key, required this.image, required this.title});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  final int seconds = 5;

  late int _secondsRemaining;

  @override
  void initState() {
    super.initState();
    _secondsRemaining = seconds;
    controller =
        AnimationController(duration: Duration(seconds: seconds), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // Timer completed
        }
      });
    controller.forward();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _secondsRemaining--;
      });
      if (_secondsRemaining == 0) {
        timer.cancel();
        Navigator.pop(context);
      }
    });
  }

  void _quitTimerAnimation() {
    controller.stop();
    Navigator.pop(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 107, 69, 69),
          child: Stack(
            children: [
              // story time progress
              LinearProgressIndicator(
                value: animation.value,
                backgroundColor: Colors.white30,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),

              // story image
              Center(
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),

              // quit button
              Positioned(
                top: 22.0,
                right: 15.0,
                child: GestureDetector(
                  onTap: _quitTimerAnimation,
                  child: const Icon(
                    CupertinoIcons.xmark,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),

              // story title other things
              Positioned(
                top: 20.0,
                left: 10.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(ConstantValues.profileImage),
                      radius: 20,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Eminem: Lose yourself',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // reel icon more icon
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icons/video.png',
                            fit: BoxFit.contain,
                            width: 23,
                            height: 23,
                          ),
                        ),
                        const Text(
                          'Create',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        const Text(
                          'More',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
