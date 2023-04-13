import 'package:flutter/material.dart';
import 'package:instagram2/screens/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePageAll(),
    );
  }
}



          // Expanded(
          //   child: SingleChildScrollView(
          //     child: Row(
          //       children: [
          //         // my story add
                  // Container(
                  //   padding: const EdgeInsets.only(bottom: 5.0),
                  //   decoration: BoxDecoration(
                  //     border: Border(
                  //       bottom: BorderSide(
                  //         color: Colors.white.withOpacity(0.1),
                  //         width: 1.0,
                  //       ),
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 15.0),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Stack(
                  //           children: const [
                  //             Padding(
                  //               padding: EdgeInsets.only(right: 10, bottom: 10),
                  //               child: CircleAvatar(
                  //                 backgroundColor: Colors.white,
                  //                 radius: 30,
                  //               ),
                  //             ),
                  //             Positioned(
                  //               right: 5,
                  //               bottom: 5,
                  //               child: CircleAvatar(
                  //                 backgroundColor: Colors.blue,
                  //                 radius: 12,
                  //                 child: Icon(
                  //                   Icons.add,
                  //                   color: Colors.white,
                  //                   size: 20,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         const Text(
                  //           'Your story',
                  //           style: TextStyle(
                  //               color: Colors.white38,
                  //               fontWeight: FontWeight.w500),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

          //         // story list
          //         ListView.builder(
          //           scrollDirection: Axis.horizontal,
          //           itemCount: 6,
          //           itemBuilder: (BuildContext context, int index) {
          //             return Column(
          //               children: [
          //                 CircleAvatar(
          //                   backgroundColor: Colors.red,
          //                   radius: 30,
          //                 ),
          //                 Text('Text ${index}'),
          //               ],
          //             );
          //           },
          //         ),
          //       ],
          //     ),
          //   ),
          // ),