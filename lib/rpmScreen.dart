// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Main Pages/home_page.dart';

class RpmScreen extends StatefulWidget {
  @override
  _RpmScreen createState() => _RpmScreen();
}

Widget builTextBtn(context) {
  return Container(
    alignment: Alignment.center,
    child: FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePageScreen()),
        );
      },
      child: Text(
        "RPM SCREEN!",
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _RpmScreen extends State<RpmScreen> {
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
                            SizedBox(height: 400),
                            builTextBtn(context),
                          ],
                        )))
              ],
            ))));
  }
}
