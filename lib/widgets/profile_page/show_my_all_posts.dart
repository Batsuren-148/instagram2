import 'package:flutter/material.dart';
import 'package:instagram2/widgets/profile_page/my_posts.dart';

class PostDetailScreen extends StatefulWidget {
  final String posts;
  final List imageList;
  final int index;
  const PostDetailScreen({
    super.key,
    required this.posts,
    required this.imageList,
    required this.index,
  });

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
            title: Column(
              children: [
                const Text(
                  'O._BATSUREN',
                  style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Posts ${widget.index}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.imageList.length,
                controller: _pageController,
                itemBuilder: (BuildContext context, int index) {
                  return MyPosts(
                    username: 'o._batsuren',
                    imgPosts: widget.imageList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
