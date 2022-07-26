// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// Screen 9
// NOTES: Contry and state has to be dropdown, fix layout of state and zipcode

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'current_health_info_one_screen.dart';
import '../Widgets/benefits_image_two.dart';

class WithoutInsuranceScreen extends StatefulWidget {
  @override
  _withoutInsuranceScreen createState() => _withoutInsuranceScreen();
}

Widget buildTopText() {
  return Column(children: <Widget>[
    Text(
      'Set up without insurance or give us a call',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(
      'Set up an account without insurance',
      style: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    Text(
      'If you would like to create a new account and pay a small fee per visit, this option is for you.',
      style: TextStyle(color: Colors.black, fontSize: 16),
    ),
  ]);
}

Widget buildContinueBtn(context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HealthInfoRegistration()),
        );
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blue,
      child: Text(
        'CONTINUE           ►',
        style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _withoutInsuranceScreen extends State<WithoutInsuranceScreen> {
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
                            benefitsImageTwo(),
                            SizedBox(height: 90),
                            SizedBox(height: 50),
                            buildTopText(),
                            buildContinueBtn(context),
                          ],
                        )))
              ],
            ))));
  }
}
