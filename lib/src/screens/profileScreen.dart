// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/models/damy_data.dart';
import 'package:design_to_code/src/screens/editing_screen.dart';
import 'package:design_to_code/src/screens/testhome.dart';
import 'package:design_to_code/src/screens/testnaviBar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(Assets.resourceImaProfileBG),
              Positioned(
                top: 100,
                left: 135,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: myUser.avatarUrl == null
                      ? null
                      : Image.network(
                          myUser.avatarUrl!,
                          width: 60,
                          height: 60,
                        ).image,
                ),
              ),
              Positioned(
                top: 290,
                left: 135,
                child: Text(
                  myUser.name ?? "N/A",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 320,
                left: 165,
                child: Text(
                  myUser.username ?? "A/N",
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
              ),
              Positioned(
                right: 25,
                child: SafeArea(
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(
                      Icons.edit,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EdtingScreen()));
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
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
                  Text(
                    "BIO",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(myUser.bio ?? '',
                      maxLines: 3, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
