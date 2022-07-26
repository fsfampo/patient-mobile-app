// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// Screen 8

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'share_location_screen.dart';

class PushNotifScreen extends StatefulWidget {
  @override
  _PushNotifScreen createState() => _PushNotifScreen();
}

Widget buildTopText() {
  return Column(children: <Widget>[
    Text(
      'Now Stay in the Know',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(' '),
    Text(' '),
    Text(' '),
    Text(
      'NEVER MISS A VISIT. Allow push notifications to recieve video alerts on your phone and reminders about your upcoming visits.',
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
    ),
  ]);
}

Widget buildEnablePushBtn(context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 40),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LocationScreen()));
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blue,
      child: Text(
        'ENABLE PUSH NOTIFICATIONS           ►',
        style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildNotNowBtn(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LocationScreen()),
        );
      },
      child: Text(
        'Not Now',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _PushNotifScreen extends State<PushNotifScreen> {
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
                            buildTopText(),
                            buildEnablePushBtn(context),
                            buildNotNowBtn(context),
                          ],
                        )))
              ],
            ))));
  }
}
