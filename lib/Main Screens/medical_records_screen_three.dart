// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/medical_records_screen_four.dart';

class MedicalRecordsScreenThree extends StatefulWidget {
  @override
  _MedicalRecordsScreenThree createState() => _MedicalRecordsScreenThree();
}

class _MedicalRecordsScreenThree extends State<MedicalRecordsScreenThree> {
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
              Text("Do You Drink Alcohol?"),
              buildSwitch(),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text("How Often do you Drink Alcohol?"),
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
            Text("More Than 4 Drinks Per Day"),
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
            Text("2-4 Drinks Per Day"),
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
            Text("1-7 Drinks Per Day"),
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
            Text("Less Than 1 Drink Per Week"),
          ]),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text("Have you traveled overseas in the past two months?"),
              buildSwitch(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "When was your last visit to the doctor?",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 380,
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
            height: 40,
            child: TextField(
              keyboardType: TextInputType.datetime,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 7),
                  hintText: 'MM/DD//YYYY',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          ),
          SizedBox(
            height: 240,
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
                      builder: (context) => MedicalRecordsScreenFour()),
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
