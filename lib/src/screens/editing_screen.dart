// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:flutter/material.dart';

class EdtingScreen extends StatefulWidget {
  const EdtingScreen({super.key});

  @override
  State<EdtingScreen> createState() => _EdtingScreenState();
}

class _EdtingScreenState extends State<EdtingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xff64A09A),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              Icons.save,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.grey.shade400,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                  color: Color(0xffF9E995),
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Select image ",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      Assets.resourceImaSave,
                      scale: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(right: 16, left: 25, bottom: 0, top: 5),
                    child: Text("BIO"),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: 16, left: 16, bottom: 16, top: 5),
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
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, bottom: 5),
                      child: TextField(
                        controller: TextEditingController(
                            text:
                                "is used when it is needed to compare the list of objects that a mouse pointer is hovering over between this frame and the last frame. This means entering events, exiting events, and mouse cursors."),
                        maxLines: 3,
                        maxLength: 255,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
              KZTextField(
                title: "Name",
                hint: 'Karam Zeway',
                icon: Assets.resourceImaUser2,
              ),
              KZTextField(
                isEnable: false,
                title: "Username",
                hint: 'karamzeway',
                icon: Assets.resourceImaAt,
              ),
              KZTextField(
                title: "Email",
                hint: 'info@KaramZeway.com',
                icon: Assets.resourceImaEmail,
              ),
              // Bo chi l vere Row qabil naket
              KZTextField(
                title: 'Birthday',
                hint: '1990/05/01',
                icon: Assets.resourceImaBirth,
                onTap: () {
                  print("Happy Birth Day");
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 50,
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
                  color: Color(0xff64A09A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Save ",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      Assets.resourceImaSave,
                      color: Colors.white,
                      scale: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KZTextField extends StatelessWidget {
  const KZTextField({
    super.key,
    required this.title,
    this.icon,
    this.hint,
    this.controller,
    this.isEnable = true,
    this.onTap,
  });
  final String title;
  final TextEditingController? controller;
  final String? icon;
  final String? hint;
  final bool isEnable;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16, left: 25, bottom: 0, top: 5),
              child: Row(
                children: [
                  Text(title),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 16, left: 16, bottom: 16, top: 5),
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
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              children: [
                if (icon != null) ...[
                  Image.asset(
                    icon!,
                    width: 18,
                    height: 18,
                    color:
                        isEnable ? Colors.black : Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
                Expanded(
                  child: TextField(
                    enabled: isEnable,
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hint,
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
