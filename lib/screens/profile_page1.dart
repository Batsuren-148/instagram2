import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram2/widgets/profile_page/img_popup.dart';
import 'package:instagram2/widgets/profile_page/profile_statistic.dart';
import 'package:instagram2/widgets/profile_page/profile_tab3.dart';

class ProfileScreenTab extends StatefulWidget {
  const ProfileScreenTab({super.key});

  @override
  State<ProfileScreenTab> createState() => _ProfileScreenTabState();
}

class _ProfileScreenTabState extends State<ProfileScreenTab>
    with SingleTickerProviderStateMixin {
  // tab bar controller
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<String> postImages = [
    'https://images.unsplash.com/photo-1562832135-14a35d25edef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1245&q=80',
    'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1475113548554-5a36f1f523d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];

  // show modal in add photo reels
  void _showAddPhotoReels() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.grey.shade900,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      )),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.70,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 50.0,
                    height: 4.0,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // reels
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: Image.asset(
                        'assets/icons/video.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Reel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Post
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.grid_on_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Post',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // story
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        CupertinoIcons.add_circled,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Story',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Story highlight
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Story highlight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Live
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.wifi_tethering_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Live',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // guide
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.menu_book_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Guide',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
            ],
          ),
        );
      },
    );
  }

  // show modal in add photo reels
  void _showSettings() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.grey.shade900,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      )),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.89,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 50.0,
                    height: 4.0,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              // settings
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Your activity
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.access_time_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Your activity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Archive
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.more_time_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Archive',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // QR code
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        CupertinoIcons.qrcode_viewfinder,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'QR code',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Saved
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.bookmark_border_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Saved',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // order
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.payment_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Orders and payments',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // digital collectibles
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.collections,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Digital collectibles',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // close friends
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.format_list_numbered_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Close friends',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // favorites
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                      ),
                      child: const Icon(
                        Icons.star_border_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.white12,
                        ),
                      )),
                      child: const Text(
                        'Favorites',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: const [
              Text('o._batsuren'),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: _showAddPhotoReels,
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: _showSettings,
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ProfileStatic(context: context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Container(
                color: Colors.black,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.white,
                  splashFactory: NoSplash.splashFactory,
                  tabs: [
                    const Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/video.png',
                        fit: BoxFit.contain,
                        width: 22,
                        height: 22,
                      ),
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.person_pin_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // tab bar items
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // my posts
                    SizedBox(
                      child: Container(
                        color: Colors.black,
                        child: GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                          children: List.generate(
                            postImages.length,
                            (index) => ImagePopUp(
                              myPosts: postImages[index],
                              imageList: postImages,
                              initialIndex: index,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const ProfileTab3(),
                    const ProfileTab3(),
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
