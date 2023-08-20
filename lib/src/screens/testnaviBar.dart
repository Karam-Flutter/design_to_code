// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/screens/editing_screen.dart';
import 'package:design_to_code/src/screens/testhome.dart';
import 'package:design_to_code/src/screens/testprofile.dart';
import 'package:flutter/material.dart';

class TestNaviBar extends StatefulWidget {
  const TestNaviBar({super.key});

  @override
  State<TestNaviBar> createState() => _TestNaviBarState();
}

class _TestNaviBarState extends State<TestNaviBar> {
  var isselected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _body,
        Positioned(bottom: 100, left: 10, child: navi),
      ],
    ));
  }

  get _body {
    switch (isselected) {
      case 0:
        return TestHome();

      case 1:
        return TestProfile();

      case 2:
        return EdtingScreen();

      default:
        return TestHome();
    }
  }

  get navi {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1D1E22),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _navibot(title: 'HOME', pathima: Assets.resourceImaHome1, index: 0),
            _navibot(
                title: 'Notfi', pathima: Assets.resourceImaNotiv1, index: 1),
            _navibot(
                title: 'Setting',
                pathima: Assets.resourceImaSetting1,
                index: 2),
          ],
        ),
      ),
    );
  }

  GestureDetector _navibot({
    required String title,
    required String pathima,
    required int index,
  }) {
    var isdo = isselected == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          isselected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 3,
                height: 20,
                color: isdo
                    ? Color.fromARGB(112, 143, 236, 244)
                    : Color.fromARGB(0, 255, 255, 255),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Image.asset(
                    pathima,
                    color: isdo
                        ? const Color.fromARGB(255, 143, 236, 244)
                        : Color.fromARGB(53, 255, 255, 255),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: isdo
                            ? Colors.white
                            : Color.fromARGB(53, 255, 255, 255),
                        fontSize: 7),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:design_to_code/src/constants/assets.dart';
// import 'package:design_to_code/src/screens/editing_screen.dart';
// import 'package:design_to_code/src/screens/login_screen.dart';
// import 'package:design_to_code/src/screens/profileScreen.dart';
// import 'package:design_to_code/src/screens/testhome.dart';
// import 'package:design_to_code/src/screens/testprofile.dart';
// import 'package:flutter/material.dart';

// class TestNaviBar extends StatefulWidget {
//   const TestNaviBar({super.key});

//   @override
//   State<TestNaviBar> createState() => _TestNaviBarState();
// }

// class _TestNaviBarState extends State<TestNaviBar> {
//   var isSlected = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           _body,
//           Positioned(
//             bottom: 16,
//             left: 16,
//             right: 16,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 height: 60,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Color(0xff1D1E22),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _navi2(index: 0, imagePath: Assets.resourceImaHome1),
//                     _navi2(index: 1, imagePath: Assets.resourceImaShop1),
//                     _navi2(index: 2, imagePath: Assets.resourceImaNotiv1),
//                     _navi2(index: 3, imagePath: Assets.resourceImaSetting1),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//               bottom: 120,
//               left: 10,
//               child: Container(
//                 padding: EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                   color: Color(0xff1D1E22),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Column(
//                   children: [
//                     _navi2(index: 0, imagePath: Assets.resourceImaHome1),
//                     _navi2(index: 1, imagePath: Assets.resourceImaShop1),
//                     _navi2(index: 2, imagePath: Assets.resourceImaNotiv1),
//                     _navi2(index: 3, imagePath: Assets.resourceImaSetting1),
//                   ],
//                 ),
//               ))
//         ],
//       ),
//     );
//   }

//   Widget get _body {
//     switch (isSlected) {
//       case 0:
//         return TestHome();
//       case 1:
//         return TestProfile();
//       case 2:
//         return ProfileScreen();
//       case 3:
//         return EdtingScreen();
//       default:
//         return TestHome();
//     }
//   }

//   Widget _navi2({
//     required int index,
//     required String imagePath,
//   }) {
//     var isdo = isSlected == index;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isSlected = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: isdo ? Colors.white12 : Colors.black.withOpacity(0),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: GestureDetector(
//           child: Image.asset(
//             imagePath,
//             color: isdo ? Color.fromARGB(255, 136, 250, 221) : Colors.white24,
//           ),
//         ),
//       ),
//     );
//   }
// }
