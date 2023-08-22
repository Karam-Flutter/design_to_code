// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/screens/privew_post.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          // Positioned.fill(
          //     // bottom: 0,
          //     child: _body1),
          ListView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 80,
              top: MediaQuery.of(context).padding.top,
            ),
            children: [
              cellType1(haveImage: false),
              cellType1(haveImage: true),
              cellType1(haveImage: false),
              cellType1(haveImage: true),
            ],
          ),
        ],
      ),
    );
  }

  // Widget get _bottomNavigationBar {
  //   return Container(
  //       padding: EdgeInsets.all(7),
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(50),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.grey.withOpacity(0.5),
  //             spreadRadius: 1,
  //             blurRadius: 3,
  //             offset: Offset(1, 3), // changes position of shadow
  //           ),
  //         ],
  //       ),
  //       width: 200,
  //       // height: 100,
  //       child: Row(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Container(
  //             child: Column(
  //               children: [
  //                 Container(
  //                   padding: EdgeInsets.all(5),
  //                   decoration: BoxDecoration(
  //                       color: Color(0xff64A09A),
  //                       borderRadius: BorderRadius.circular(15)),
  //                   child: Icon(
  //                     Icons.home,
  //                     color: Colors.white,
  //                     size: 30,
  //                   ),
  //                 ),
  //                 Text('Home'),
  //               ],
  //             ),
  //           ),
  //           Container(
  //             child: Column(
  //               children: [
  //                 Container(
  //                   padding: EdgeInsets.all(5),
  //                   decoration: BoxDecoration(
  //                       color: Color(0xff64A09A),
  //                       borderRadius: BorderRadius.circular(15)),
  //                   child: Icon(
  //                     Icons.person,
  //                     color: Colors.white,
  //                     size: 30,
  //                   ),
  //                 ),
  //                 Text('Profile'),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ));
  // }

  Widget cellType1({required bool haveImage}) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(1, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: Image.asset(
                                Assets.resourceImaPerson,
                                width: 40,
                                height: 40,
                              ).image,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Karam Zeway"),
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.power_input_sharp)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrivewPost()),
                    );
                  },
                  child: Text(
                      "A box shadow is a visual effect used in the Flutter framework that lets you add shadows to any widget. It is a built-in widget that takes",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 10,
                ),
                if (haveImage)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrivewPost()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: Image.asset(Assets.resourceImaCode),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 35,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "1.5k",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 10),
                Image.asset(Assets.resourceImaIconLike)
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 150,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "250",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 10),
                Image.asset(
                  Assets.resourceImaIconComment,
                  scale: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
