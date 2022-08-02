// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

class PaymentConfirmation extends StatefulWidget {
  @override
  _PaymentConfirmation createState() => _PaymentConfirmation();
}

class _PaymentConfirmation extends State<PaymentConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          width: 390,
          height: 410,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(children: [
            Container(
              width: 200.0,
              height: 200.0,
              decoration: new BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.done,
                size: 100,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Payment Complete",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Your Transaction was Successful",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: 300,
              height: 100,
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
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.green,
                child: Text(
                  'Done',
                  style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
