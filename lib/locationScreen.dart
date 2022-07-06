// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// Screen 9

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreen createState() => _LocationScreen();
}

Widget buildTopText() {
  return Column(children: <Widget>[
    Text(
      'Share Your Location',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(' '),
    Text(' '),
    Text(' '),
    Text(
      'LET US KNOW WHERE YOU ARE. Sharing your location can expedite your visit requests, help youfind nearby pharmacies and enable helpful alerts on ways to use ApkaMD.',
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
    ),
  ]);
}

Widget buildEnablePushBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 40),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Enable Location Pressed'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blue,
      child: Text(
        'ENABLE LOCATION SERVICES           ►',
        style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildNotNowBtn() {
  return Container(
    alignment: Alignment.center,
    child: FlatButton(
      onPressed: () => print("Not Now Pressed"),
      child: Text(
        'Not Now',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _LocationScreen extends State<LocationScreen> {
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
                            buildEnablePushBtn(),
                            buildNotNowBtn(),
                          ],
                        )))
              ],
            ))));
  }
}
