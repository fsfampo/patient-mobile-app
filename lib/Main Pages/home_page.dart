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
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.medication), label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken_rounded), label: " "),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: " "),
          ]),
    );
  }
}
