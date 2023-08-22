// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: IconButton(
          color: Colors.white60,
          onPressed: () {},
          icon: Icon(
            Icons.cancel_outlined,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(
                    0xff64A09A,
                  ),
                ),
                child: Text(
                  "Post",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Karam Zeway',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.resourceImaWorld,
                            scale: 19,
                            color: Colors.black38,
                          ),
                          Text(
                            'Public',
                            style:
                                TextStyle(color: Colors.black38, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "What's on your mind?",
                  hintStyle: TextStyle(color: Colors.black26, fontSize: 15),
                  border: InputBorder.none),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                Assets.resourceImaAddPhoto,
                scale: 2,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
