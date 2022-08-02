// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/add_insurance.dart';

class InsuranceScreen extends StatefulWidget {
  @override
  _InsuranceScreen createState() => _InsuranceScreen();
}

class _InsuranceScreen extends State<InsuranceScreen> {
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
          ],
        ),
      ),
    );
  }
}
