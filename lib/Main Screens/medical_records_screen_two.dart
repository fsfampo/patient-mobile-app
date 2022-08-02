// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/medical_records_screen_three.dart';

class MedicalRecordsScreenTwo extends StatefulWidget {
  @override
  _MedicalRecordsScreenTwo createState() => _MedicalRecordsScreenTwo();
}

class _MedicalRecordsScreenTwo extends State<MedicalRecordsScreenTwo> {
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
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text(
              "Lifestyle",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ]),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text("Do You Smoke / Use Tobacco?"),
              buildSwitch(),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text("How Often do you Use Tobacco?"),
            ],
          ),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("Socially"),
          ]),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("Ocasionally"),
          ]),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("Less Than Twice Per Week"),
          ]),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("Daily"),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text("How Many Years Have you Been Using Tobacco?"),
            ],
          ),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("More Than 20"),
          ]),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("11-20"),
          ]),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("6-10"),
          ]),
          Row(children: [
            // Padding(padding: EdgeInsets.only(left: 20)),
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 0;
                });
              },
            ),
            Text("1-5"),
          ]),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text("Do You Want to Quit?"),
              buildSwitch(),
            ],
          ),
          SizedBox(
            height: 100,
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
                      builder: (context) => MedicalRecordsScreenThree()),
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
