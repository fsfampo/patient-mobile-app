// ignore_for_file: prefer_const_constructors
// Screen 10

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreen createState() => _HomePageScreen();
}

Widget buildAppBar() {
  return Scaffold(
      appBar: AppBar(
    title: Text("Hi, User"),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(Icons.doorbell_outlined),
        color: Colors.black,
        iconSize: 30,
        onPressed: () => {},
      ),
      IconButton(
        icon: Icon(Icons.search),
        color: Colors.black,
        iconSize: 30,
        onPressed: () => {},
      )
    ],
  ));
}

class _HomePageScreen extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // App Bar
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text("  "),
                            Text(
                              "Hi, USER",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.search),
                        // Icon(Icons.settings)
                      ])),

              SizedBox(height: 18),
              Text(
                "Fill out your medical history to get started",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(height: 10),

              // Search By

              // Specialities

              // Browse Doctors

              // Bottom Nav Bar
            ],
          ),
        ));
  }
}
