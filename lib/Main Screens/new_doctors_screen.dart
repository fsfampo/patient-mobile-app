// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/book_apointments_screen.dart';
import 'package:test2/Main%20Screens/messages_screen.dart';
import 'package:test2/Main%20Screens/voice_call_screen.dart';
import 'home_page.dart';

class NewDoctorsScreen extends StatefulWidget {
  @override
  _NewDoctorsScreen createState() => _NewDoctorsScreen();
}

class _NewDoctorsScreen extends State<NewDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(children: [
          // Picture of Doctor
          Container(
            color: Colors.grey[200],
            child: new Image.asset('images/Robin 2 smaller.png'),
            alignment: Alignment.center,
          ),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              "Dr. Robin",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              "123 Teen Titans Tower Indianapolis, Indiana",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              "Cardiologist",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              "5.0 ⭐⭐⭐⭐⭐",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
          ]),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Patients Seen",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
              Text(
                "Experience",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "1.35k",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
              Text(
                "21 yr",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "About",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.only(left: 50, right: 20),
              child: Text(
                "Dr. Robin is a board-certified Cardiologist with several certifications in cardiac specialties",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              )),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: 190,
              height: 100,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VoiceCallScreen()),
                  );
                },
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.blue.withOpacity(0.9),
                child: Text(
                  '📞 Voice Call',
                  style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: 190,
              height: 100,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessagesScreen()),
                  );
                },
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.green.withOpacity(0.9),
                child: Text(
                  '📩 Message',
                  style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0),
            width: 350,
            height: 50,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BookAppointmentsScreen()),
                );
              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
              child: Text(
                'View Availabilities',
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]))));
  }
}
