// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/add_insurance.dart';
import 'package:test2/Main%20Screens/home_page.dart';

class MemberIDScreen extends StatefulWidget {
  @override
  _MemberIDScreen createState() => _MemberIDScreen();
}

class _MemberIDScreen extends State<MemberIDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Medical Insurance",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
              height: 250,
              color: Color.fromARGB(255, 222, 221, 221).withOpacity(0.3),
              child: Text(
                "Upload a Photo of Your Insurance 📷",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Or add your insurance manually",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.underline),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddInsurance()),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Plan and Carrier: Anthem",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey, //color of divider
              height: 2, //height spacing of divider
              thickness: 1,
              indent: 25, //spacing at the start of divider
              endIndent: 25,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Policy Number: 7345W",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 80,
            ),
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
        ),
      ),
    );
  }
}
