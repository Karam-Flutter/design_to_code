// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:design_to_code/src/constants/assets.dart';
import 'package:flutter/material.dart';

class PrivewPost extends StatefulWidget {
  const PrivewPost({super.key});

  @override
  State<PrivewPost> createState() => _PrivewPostState();
}

class _PrivewPostState extends State<PrivewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Expanded(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back_ios_new),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    Image.asset(Assets.resourceImaPerson).image,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Karam Zeway",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "1h .",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Image.asset(
                                        Assets.resourceImaWorld,
                                        scale: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            Assets.resourceImaDots,
                            scale: 10,
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          maxLines: 3,
                          controller: TextEditingController(
                            text:
                                "A box shadow is a visual effect used in the Flutter framework that lets you add shadows to any widget. It is a built-in widget that takes",
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      ClipRRect(
                        child: Image.asset(Assets.resourceImaCode),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Assets.resourceImaLike2,
                                scale: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Like'),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                Assets.resourceImaIconComment,
                                scale: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Comment'),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                Assets.resourceImaShare,
                                scale: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Share'),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                      Text(
                        'Karam Zeway and 45 others',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      _comment,
                      _comment,
                      _comment,
                      _comment,
                      _comment,
                      _comment,
                      _comment,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      // width: 200,
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(

                              // border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              hintText: "your Comment"),
                        ),
                      ),
                    ),
                    Image.asset(
                      Assets.resourceImaSend,
                      scale: 5,
                      color: Colors.blue[300],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Container(
          //   height: 50,
          //   decoration: BoxDecoration(color: Colors.redAccent),
          //   child: TextField(
          //     decoration: InputDecoration(
          //         border: InputBorder.none, hintText: "your Comment"),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget get _comment {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.resourceImaPerson),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Karam Zeway',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Hello Dart & Flutter',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '31m',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Replay',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
