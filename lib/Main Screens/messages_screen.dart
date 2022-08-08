// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreen createState() => _MessagesScreen();
}

class _MessagesScreen extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(children: [
          // Search Bar
          Container(
            //alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 40,
            width: 350,
            child: TextField(
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 7, bottom: 7),
                  hintText: 'Search a Provider',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Doctor Pictures
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: new Image.asset('images/robin-circle.png'),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: new Image.asset('images/beast-circle.png'),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: new Image.asset('images/cyborg-circle.png'),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: new Image.asset('images/star-circle.png'),
                alignment: Alignment.center,
              ),
            ],
          ),
        ]))));
  }
}
