// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FieldScreen extends StatefulWidget {
  const FieldScreen({super.key});

  @override
  State<FieldScreen> createState() => _FieldScreenState();
}

class _FieldScreenState extends State<FieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: ListView(
          children: [
            cellType1(haveImage: false),
            cellType1(haveImage: true),
            cellType1(haveImage: false),
            cellType1(haveImage: true),
          ],
        ),
      ),
    );
  }

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
                                "assets/ima/person.jpeg",
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
                Text(
                    "A box shadow is a visual effect used in the Flutter framework that lets you add shadows to any widget. It is a built-in widget that takes",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                SizedBox(
                  height: 10,
                ),
                if (haveImage)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Image.asset('assets/ima/code.jpeg'),
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
                Image.asset('assets/ima/icon_like.png')
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
                Image.asset('assets/ima/icon_comment.png')
              ],
            ),
          ),
        )
      ],
    );
  }
}
