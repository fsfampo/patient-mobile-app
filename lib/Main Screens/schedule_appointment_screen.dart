// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Widgets/card_four.dart';
import 'home_page.dart';
import 'package:test2/Widgets/card_one.dart';
import 'package:test2/Widgets/card_three.dart';
import '../Widgets/card_two.dart';

class ScheduleAppointmentScreen extends StatefulWidget {
  @override
  _ScheduleAppointmentScreen createState() => _ScheduleAppointmentScreen();
}

class _ScheduleAppointmentScreen extends State<ScheduleAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(children: [
          // App Bar
          Text(
            "Location",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),
          ),
          Text(
            "Indianapolis, Indiana 🔎",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Doctors",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Heart Button
              CardThree(iconImagePath: 'images/Heart.png'),
              SizedBox(
                width: 20,
              ),
              CardFour(iconImagePath: 'images/Diabetes Tile.png'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Heart Button
              CardThree(iconImagePath: 'images/Heart.png'),
              SizedBox(
                width: 20,
              ),
              CardThree(iconImagePath: 'images/Diabetes Tile.png'),
            ],
          ),
          SizedBox(
            height: 370,
          ),
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
        ]))));
  }
}
