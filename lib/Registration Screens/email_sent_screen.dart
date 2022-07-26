// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// Screen 4
// NOTE: Make health a dropdown

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Registration%20Screens/login_screen.dart';
import 'current_health_info_one_screen.dart';

class EmailSentScreen extends StatefulWidget {
  @override
  _EmailSentScreen createState() => _EmailSentScreen();
}

Widget buildTopText() {
  return Column(children: <Widget>[
    Text(
      'Email has been sent!',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(
      "An email with instructions for password reset has been sent!",
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(' '),
  ]);
}

Widget buildResendBtn(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      child: FlatButton(
          child: Text("Resend Email"),
          // style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmailSentScreen()),
            );
          }));
}

Widget buildSendBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blue,
      child: Text(
        'LOGIN                                                   ►',
        style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _EmailSentScreen extends State<EmailSentScreen> {
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
                            SizedBox(height: 120),
                            SizedBox(height: 50),
                            buildTopText(),
                            SizedBox(height: 20),
                            buildSendBtn(context),
                            buildResendBtn(context)
                          ],
                        )))
              ],
            ))));
  }
}
