// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/payment_confirmation_screen.dart';
import 'home_page.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreen createState() => _PaymentScreen();
}

class _PaymentScreen extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Container(
        width: 350,
        height: 430,
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
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Text(
                "Amount:          ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Container(
                  width: 90,
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      '\$18',
                      style: TextStyle(
                          color: Color.fromARGB(255, 252, 252, 252),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Card Number",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 2))
                      ]),
                  height: 30,
                  width: 260,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 7, bottom: 17),
                        hintText:
                            'Card Number                                               💳',
                        hintStyle:
                            TextStyle(color: Colors.black38, fontSize: 13)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Text(
                "Exp. Date                                 ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                "CVV/CVC",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 30,
                width: 80,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 7, bottom: 17),
                      hintText: 'MM/YY',
                      hintStyle:
                          TextStyle(color: Colors.black38, fontSize: 13)),
                ),
              ),
              SizedBox(
                width: 105,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 2))
                    ]),
                height: 30,
                width: 80,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 7, bottom: 17),
                      hintStyle:
                          TextStyle(color: Colors.black38, fontSize: 13)),
                ),
              )
            ]),
            SizedBox(
              height: 30,
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
                    MaterialPageRoute(
                        builder: (context) => PaymentConfirmation()),
                  );
                },
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.blue,
                child: Text(
                  'Make Payment',
                  style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    )));
  }
}
