// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/models/damy_data.dart';
import 'package:design_to_code/src/models/post_model.dart';
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
              cellType1(post: myPosts[0]),
              cellType1(post: myPosts[1]),
              cellType1(post: myPosts[2]),
            ],
          ),
        ],
      ),
    );
  }

  Widget cellType1({required PostModel post}) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            Text(myUser.name!),
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
                  child: Text(post.text ?? '',
                      maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 10,
                ),
                if (post.imageUrl != null)
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
                        child: Image.network(post.imageUrl!),
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
                  post.likesUserUID?.length.toString() ?? '0',
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
                  post.comments?.length.toString() ?? '0',
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
