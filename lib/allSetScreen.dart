// ignore_for_file: prefer_const_constructors
// Screen 10

import 'package:flutter/material.dart';

class AllSetScreen extends StatefulWidget {
  @override
  _AllSetScreenState createState() => _AllSetScreenState();
}

class _AllSetScreenState extends State<AllSetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "NAME, You're All Set!",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
