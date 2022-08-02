// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/add_insurance.dart';
import 'package:test2/Main%20Screens/add_member_id_screen.dart';

class AddInsurance extends StatefulWidget {
  @override
  _AddInsurance createState() => _AddInsurance();
}

class _AddInsurance extends State<AddInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              color: Color.fromARGB(255, 224, 224, 224),
              height: 30,
              width: 500,
              child: Center(
                child: Text(
                  "Popular Carriers",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            TextButton(
              child: Text(
                "Aetna",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
            TextButton(
              child: Text(
                "Cigna",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
            TextButton(
              child: Text(
                "United HealthCare",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
            Container(
              color: Color.fromARGB(255, 224, 224, 224),
              height: 30,
              width: 500,
              child: Center(
                child: Text(
                  "A",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            TextButton(
              child: Text(
                "Anthem",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
            TextButton(
              child: Text(
                "Acess",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
            Container(
              color: Color.fromARGB(255, 224, 224, 224),
              height: 30,
              width: 500,
              child: Center(
                child: Text(
                  "B",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            TextButton(
              child: Text(
                "Blue Cross",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
            TextButton(
              child: Text(
                "Birsoft",
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberIDScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
