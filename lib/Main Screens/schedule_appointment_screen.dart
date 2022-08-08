// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/medications_screen.dart';
import 'package:test2/Main%20Screens/rpm_screen.dart';
import 'package:test2/Widgets/appointment_card.dart';
import 'package:test2/Widgets/card_four.dart';
import 'package:test2/Widgets/medication_card.dart';
import 'package:test2/Widgets/messages_card.dart';
import 'package:test2/Widgets/rpm_card.dart';
import 'home_page.dart';
import 'package:test2/Widgets/card_one.dart';
import 'package:test2/Widgets/card_three.dart';
import '../Widgets/card_two.dart';
import 'package:test2/Widgets/home_card.dart';

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
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  },
                  padding: EdgeInsets.only(right: 0),
                  child: Text(
                    'Cardiologist',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                // alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  },
                  padding: EdgeInsets.only(right: 0),
                  child: Text(
                    'Oncologist',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                // alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  },
                  padding: EdgeInsets.only(right: 0),
                  child: Text(
                    'Dermatologist',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  },
                  padding: EdgeInsets.only(right: 0),
                  child: Text(
                    'Top Rated >',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                // alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  },
                  padding: EdgeInsets.only(right: 0),
                  child: Text(
                    'Sort ^',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                // alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePageScreen()),
                    );
                  },
                  padding: EdgeInsets.only(right: 0),
                  child: Text(
                    'Filter By',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
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
                  HomeCard(iconImagePath: 'images/Home.png'),
                  MedicationsCard(iconImagePath: 'images/Pill.png'),
                  RPMCard(iconImagePath: 'images/Heartbeat.png'),
                  MessagesCard(iconImagePath: 'images/Message.png'),
                  AppointmentCard(iconImagePath: 'images/Calendar.png'),
                ]),
          )
        ]))));
  }
}
