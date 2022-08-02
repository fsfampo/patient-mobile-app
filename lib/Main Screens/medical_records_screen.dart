// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/medical_records_screen_two.dart';

class MedicalRecordsScreen extends StatefulWidget {
  @override
  _MedicalRecordsScreen createState() => _MedicalRecordsScreen();
}

class _MedicalRecordsScreen extends State<MedicalRecordsScreen> {
  var items = ['1', '2', '3'];
  String dropdownValue = '0';
  bool value = true;
  int _value = 1;

  @override
  Widget buildSwitch() => Switch.adaptive(
        value: value,
        onChanged: (value) => setState(() => this.value = value),
      );

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Make Color of Screen White
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
          ),
          // Name and Introduction
          Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                "John's Medical History",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "A complete and accurate medical history is important for our providers to ensure they have the information they need to provide your treatment plan.",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "Height (Feet)",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(
              "Height (Inches)",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            // Padding(padding: EdgeInsets.only(left: 5, right: 5)),
            Container(
              width: 180,
              height: 40,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 7),
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            ),
            Container(
              width: 180,
              height: 40,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 7),
                    hintStyle: TextStyle(color: Colors.black38)),
              ),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Weight (lbs)",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Container(
                width: 375,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 7),
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Medications",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Container(
                width: 375,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 7),
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Allergies",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Container(
                width: 375,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 7),
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MedicalRecordsScreenTwo()),
                );
              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
              child: Text(
                'Next',
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ])));
  }
}
