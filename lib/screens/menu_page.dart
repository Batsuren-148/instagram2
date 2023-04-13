import 'package:flutter/material.dart';
import 'package:instagram2/screens/home_page.dart';
import 'package:instagram2/screens/profile_page1.dart';
import 'package:instagram2/screens/test.dart';

class HomePageAll extends StatefulWidget {
  const HomePageAll({super.key});

  @override
  State<HomePageAll> createState() => _HomePageAllState();
}

class _HomePageAllState extends State<HomePageAll> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const TimerAnimation(),
    const HomePage(),
    const HomePage(),
    const ProfileScreenTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/homepage.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              'assets/icons/homepage_fill.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/search.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              'assets/icons/search_fill.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/more.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              'assets/icons/addition.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/video.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              'assets/icons/video_fill.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/user.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            activeIcon: Image.asset(
              'assets/icons/user_fill.png',
              fit: BoxFit.contain,
              width: 25,
              height: 25,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
