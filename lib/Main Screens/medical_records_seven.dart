// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/home_page.dart';
import 'package:test2/Main%20Screens/medical_records_screen_six.dart';

class MedicalRecordsScreenSeven extends StatefulWidget {
  @override
  _MedicalRecordsScreenSeven createState() => _MedicalRecordsScreenSeven();
}

class _MedicalRecordsScreenSeven extends State<MedicalRecordsScreenSeven> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Make Color of Screen White
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
            ),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Health Problems",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Panic Attacks",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value!),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Psoriasis",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value!),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Seizures",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value!),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Stroke",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value!),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Thyroid Disease",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value!),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Urinary Tract Infections",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value!),
              ),
            ]),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                "Other",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
              height: 100,
              width: 370,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 7),
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black38)),
              ),
            ),
            SizedBox(height: 210),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageScreen()),
                  );
                },
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.blue,
                child: Text(
                  'Save',
                  style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )));
  }
}
