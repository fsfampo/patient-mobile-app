// ignore_for_file: prefer_const_constructors
// Screen 10

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/medical_records_screen.dart';
import 'package:test2/Main%20Screens/personal_information_screen.dart';
import 'package:test2/Widgets/card_one.dart';
import '../Widgets/card_two.dart';
import 'package:test2/Main%20Screens/doctor_screen.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: [
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
                        TextButton(
                          child: Text(
                            "Hi, Luke",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PersonalInformationScreen()),
                            );
                          },
                        )
                      ],
                    ),
                    Icon(Icons.search),
                    // Icon(Icons.settings)
                  ])),

          SizedBox(height: 5),

          TextButton(
            child: Text(
              "Fill out your medical history to get started",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicalRecordsScreen()),
              );
            },
          ),
          SizedBox(height: 10),

          // Search By
          Container(
            width: 420,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 207, 237, 251)),
            child: Column(
              children: [
                Text(" "),
                Text(
                  "Get a convenient consultation",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "right from your fingertips today!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(" "),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
                  height: 35,
                  width: 370,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 7),
                        hintText: 'Search by Illness',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.black38)),
                  ),
                ),
                Text(" "),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
                  height: 35,
                  width: 370,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 7),
                        hintText: 'Search by Your Location',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.black38)),
                  ),
                ),
                Text(" "),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
                  height: 35,
                  width: 370,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 7),
                        hintText: 'Search by Availability',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.black38)),
                  ),
                ),
                Text(" "),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
                  height: 35,
                  width: 370,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 7),
                        hintText: 'Search by Insurance Network',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Colors.black38)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  width: 390,
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoctorScreen()),
                      );
                    },
                    padding: EdgeInsets.all(11),
                    color: Color.fromARGB(255, 0, 103, 187),
                    child: Text(
                      'Find Doctor',
                      style: TextStyle(
                          color: Color.fromARGB(255, 252, 252, 252),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Specialities

          Text(
            "Specialties",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 103, 187),
            ),
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Heart Button
              CardOne(iconImagePath: 'images/Heart.png'),
              CardOne(iconImagePath: 'images/Diabetes Tile.png'),
              CardOne(iconImagePath: 'images/Asthma Tile.png'),
              CardOne(iconImagePath: 'images/Gastro Tile.png'),
            ],
          ),

          SizedBox(
            height: 10,
          ),

          // Browse Doctors
          Text(
            "Browse Doctors Nearby",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 103, 187),
            ),
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Heart Button
              CardOne(iconImagePath: 'images/Heart.png'),
              CardOne(iconImagePath: 'images/Heart.png'),
              CardOne(iconImagePath: 'images/Heart.png'),
              CardOne(iconImagePath: 'images/Heart.png'),
            ],
          ),

          SizedBox(height: 45),

          // Bottom Nav Bar
          Container(
            width: 420,
            // height: 5,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 229, 247, 255)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(" "),
                  CardTwo(iconImagePath: 'images/Home.png'),
                  CardTwo(iconImagePath: 'images/Pill.png'),
                  CardTwo(iconImagePath: 'images/Heartbeat.png'),
                  CardTwo(iconImagePath: 'images/Message.png'),
                  CardTwo(iconImagePath: 'images/Calendar.png'),
                ]),
          )
        ])));
  }
}
