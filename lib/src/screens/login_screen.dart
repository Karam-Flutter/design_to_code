// ignore_for_file: prefer_const_constructors

import 'package:design_to_code/src/constants/assets.dart';
import 'package:design_to_code/src/screens/home_screen.dart';
import 'package:design_to_code/src/screens/main_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Column(
        children: [
          topStack,
          SizedBox(
            height: 150,
          ),
          textFieldEmail,
          SizedBox(
            height: 20,
          ),
          textFieldPassword,
          SizedBox(
            height: 100,
          ),
          btnLogin,
        ],
      )),
    );
  }

  Widget get topStack {
    return Stack(
      children: [
        Image.asset(Assets.resourceImaBg),
        Positioned(
          top: 30,
          left: 50,
          child: Text(
            'LOGIN',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 150,
          child: Image.asset(Assets.resourceImaLogo),
        ),
      ],
    );
  }

  Widget get textFieldEmail {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Email"),
      ),
    );
  }

  Widget get textFieldPassword {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        obscureText: true,
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Password"),
      ),
    );
  }

  Widget get btnLogin {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
      },
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
          color: Color(0xffF9E995),
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(width: 25),
            Image.asset(Assets.resourceImaIconLogin)
          ],
        ),
      ),
    );
  }
}
