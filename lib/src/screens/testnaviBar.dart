// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/screens/login_screen.dart';
import 'package:design_to_code/src/screens/profileScreen.dart';
import 'package:design_to_code/src/screens/testhome.dart';
import 'package:design_to_code/src/screens/testprofile.dart';
import 'package:flutter/material.dart';

class TestNaviBar extends StatefulWidget {
  const TestNaviBar({super.key});

  @override
  State<TestNaviBar> createState() => _TestNaviBarState();
}

class _TestNaviBarState extends State<TestNaviBar> {
  var isSlected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _body,
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff1D1E22),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _navi2(index: 0, imagePath: Assets.resourceImaHome1),
                  _navi2(index: 1, imagePath: Assets.resourceImaShop1),
                  _navi2(index: 2, imagePath: Assets.resourceImaNotiv1),
                  _navi2(index: 3, imagePath: Assets.resourceImaSetting1)
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }

  Widget get _body {
    switch (isSlected) {
      case 0:
        return TestHome();
      case 1:
        return TestProfile();
      case 2:
        return LoginScreen();
      case 3:
        return ProfileScreen();
      default:
        return TestHome();
    }
  }

  Widget _navi2({
    required int index,
    required String imagePath,
  }) {
    var isdo = isSlected == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          isSlected = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isdo ? Colors.white12 : Colors.black.withOpacity(0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: GestureDetector(
          child: Image.asset(
            imagePath,
            color: isdo ? Colors.white : Colors.white24,
          ),
        ),
      ),
    );
  }
}

// var isdo = isSlected == index;




















// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:design_to_code/src/constants/assets.dart';
// import 'package:design_to_code/src/screens/testhome.dart';
// import 'package:design_to_code/src/screens/testprofile.dart';
// import 'package:flutter/material.dart';

// class TestNaviBar extends StatefulWidget {
//   const TestNaviBar({super.key});

//   @override
//   State<TestNaviBar> createState() => _TestNaviBarState();
// }

// class _TestNaviBarState extends State<TestNaviBar> {
//   var isSlected2 = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(),
//       body: Stack(
//         children: [
//           _body,
//           Positioned(bottom: 16, left: 16, right: 16, child: _testnavibar),
//         ],
//       ),
//     );
//   }

//   Widget get _body {
//     switch (isSlected2) {
//       case 0:
//         return TestHome();
//       case 1:
//         return TestProfile();

//       default:
//         return TestHome();
//     }
//   }

//   Widget get _testnavibar {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.amber[100],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               cellnavi2(
//                   title: 'Home', imagepath2: Assets.resourceImaSave, index: 0),
//               cellnavi2(
//                   title: 'Profile',
//                   imagepath2: Assets.resourceImaSave,
//                   index: 1),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   GestureDetector cellnavi2({
//     required String title,
//     required String imagepath2,
//     required int index,
//   }) {
//     var isnum = isSlected2 == index;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isSlected2 = index;
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         // mainAxisAlignment: MainAxisAlignment.center,
//         // crossAxisAlignment: CrossAxisAlignment.center,

//         children: [
//           Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(13),
//               color: isnum ? Colors.green[600] : Colors.grey[350],
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(
//                   Icons.home,
//                   color: isnum ? Colors.white : Colors.black12,
//                   size: 25,
//                 ),
//               ],
//             ),
//           ),
//           Text(
//             title,
//             style: TextStyle(fontSize: 12),
//           )
//         ],
//       ),
//     );
//   }
// }
