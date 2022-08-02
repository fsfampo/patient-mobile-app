// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/medical_records_screen_five.dart';

class MedicalRecordsScreenFour extends StatefulWidget {
  @override
  _MedicalRecordsScreenFour createState() => _MedicalRecordsScreenFour();
}

class _MedicalRecordsScreenFour extends State<MedicalRecordsScreenFour> {
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
                "Anxiety",
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
                "Arrhythmias",
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
                "Asthma",
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
                "COPD",
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
                "Cancer",
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
                "Depression",
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
                "Diabetes",
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
                "Eczema",
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
                "Headaches/Migraines",
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
                "Heart Problems",
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
                "High Blood Pressure",
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
                "Kidney Problems",
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
            SizedBox(
              height: 50,
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
                        builder: (context) => MedicalRecordsScreenFive()),
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
          ],
        )));
  }
}
