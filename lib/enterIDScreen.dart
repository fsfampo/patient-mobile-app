// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// Screen 16

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dropdownBuild.dart';

class EnterIDScreen extends StatefulWidget {
  @override
  _EnterIDScreen createState() => _EnterIDScreen();
}

Widget buildMemberID() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Please enter your ID',
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Text(' '),
      Text(
        'Insurance Carrier',
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Text(
        'Health Carrier',
        style: TextStyle(
            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      Text(' '),
      Text(
        'Enter your Anthem Health Member ID',
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 7),
          ),
        ),
      )
    ],
  );
}

Widget buildContinueBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Continue Pressed'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blue,
      child: Text(
        'CONTINUE                                                   ►',
        style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildDontKnowIDBtn() {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Not on List Pressed'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey,
      child: Text(
        "I DON'T KNOW MY ID                              ►",
        style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _EnterIDScreen extends State<EnterIDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(
              children: <Widget>[
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 255, 255),
                        ])),
                    child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 160),
                            SizedBox(height: 50),
                            buildMemberID(),
                            SizedBox(height: 250),
                            buildContinueBtn(),
                            buildDontKnowIDBtn(),
                            // DropdownBuild(),
                          ],
                        )))
              ],
            ))));
  }
}
