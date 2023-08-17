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
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 80,
              top: MediaQuery.of(context).padding.top,
            ),
            child: Container(
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
                radius: 60,
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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "A box shadow is a visual effect used in the Flutter framework that lets you add shadows to any widget. It is a built-in widget that takes ets you add shadows to any widget. It is a built-in widget that takes",
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "230/255",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              textF(
                Title: "Name",
                name: 'Karam Zeway',
              ),
              textF(
                Title: "Username",
                name: '@karamzeway',
              ),
              Opacity(
                opacity: 0.5,
                child: textF(
                  Title: "Email",
                  name: 'info@KaramZeway.com',
                ),
              ),
              // Bo chi l vere Row qabil naket
              textF(Title: 'Birthday', name: '1990/05/01'),
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

class textF extends StatelessWidget {
  const textF({
    super.key,
    required this.Title,
    required this.name,
    this.icon,
  });
  final String Title;
  final String name;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16, left: 25, bottom: 0, top: 5),
              child: Row(
                children: [
                  Text(Title),
                  // SizedBox(
                  //   width: 50,
                  // ),
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
            padding: const EdgeInsets.all(13.0),
            child: Row(
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
