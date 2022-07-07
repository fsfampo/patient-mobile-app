// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// Screen 4
// NOTE: Make health a dropdown

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'healthInfoRegistration.dart';
import 'benefitsImageTwo.dart';
import 'withoutInsuranceScreen.dart';

class MoreInfoScreen extends StatefulWidget {
  @override
  _MoreInfoScreen createState() => _MoreInfoScreen();
}

Widget buildTopBtn() {
  return Column(children: <Widget>[
    Text(
      'We need a little more info',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(
      'Please select your health or insurance provider below. We use this information to help match you to your benefits, even if your benefits are provided by your employer or association.',
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    Text(' '),
    Text(' '),
  ]);
}

Widget buildFirstName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Health or Insurance Plan',
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
              hintText: 'Health or Insurance Plan',
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      )
    ],
  );
}

Widget buildNotOnListBtn(context) {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WithoutInsuranceScreen()),
        );
      },
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey,
      child: Text(
        'MY PROVIDER IS NOT ON THE LIST      ►',
        style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildContinueBtn(BuildContext context) {
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
        'CONTINUE                                                   ►',
        style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _MoreInfoScreen extends State<MoreInfoScreen> {
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
                            SizedBox(height: 120),
                            SizedBox(height: 50),
                            buildTopBtn(),
                            buildFirstName(),
                            SizedBox(height: 200),
                            buildContinueBtn(context),
                            buildNotOnListBtn(context),
                          ],
                        )))
              ],
            ))));
  }
}
