import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/screens/create_post.dart';
import 'package:design_to_code/src/screens/home_screen.dart';
import 'package:design_to_code/src/screens/profileScreen.dart';
import 'package:design_to_code/src/screens/testnaviBar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selecedVAIindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: _body),
          Positioned(
              bottom: 16, left: 16, right: 16, child: _bottomNavigationBar),
        ],
      ),
    );
  }

  Widget get _body {
    switch (_selecedVAIindex) {
      case 0:
        return HomeScreen();
      case 1:
        return ProfileScreen();
      case 2:
        return CreatePost();

      default:
        return HomeScreen();
    }
  }

  Widget get _bottomNavigationBar {
    return Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 3), // changes position of shadow
            ),
          ],
        ),
        width: 200,
        // height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navigationCell(
                title: "Home", imagePath: Assets.resourceImaHome, index: 0),
            navigationCell(
                title: "Create", imagePath: Assets.resourceImaAdd, index: 2),
            navigationCell(
                title: "Profile", imagePath: Assets.resourceImaUser, index: 1),
          ],
        ));
  }

  GestureDetector navigationCell({
    required String title,
    required String imagePath,
    required int index,
  }) {
    var isSelected = _selecedVAIindex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selecedVAIindex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? Color(0xff5e9c8d) : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              imagePath,
              width: 16,
              height: 16,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
