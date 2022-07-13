// ignore_for_file: prefer_const_constructors
// Screen 10

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreen createState() => _HomePageScreen();
}

Widget buildAppBar() {
  return Scaffold(
      appBar: AppBar(
    title: Text("Hi, User"),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(Icons.doorbell_outlined),
        color: Colors.black,
        iconSize: 30,
        onPressed: () => {},
      ),
      IconButton(
        icon: Icon(Icons.search),
        color: Colors.black,
        iconSize: 30,
        onPressed: () => {},
      )
    ],
  ));
}

class _HomePageScreen extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // App Bar
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text("  "),
                            Text(
                              "Hi, USER",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                        Icon(Icons.search),
                        // Icon(Icons.settings)
                      ])),

              SizedBox(height: 25),
              Text(
                "Fill out your medical history to get started",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(height: 10),

              // Search By
              Container(
                width: 420,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 207, 237, 251)),
                child: Column(
                  children: [
                    Text(" "),
                    Text(
                      "Get a convenient consultation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "right from your fingertips today!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(" "),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      height: 40,
                      width: 370,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 7),
                            hintText: 'Search by Illness',
                            hintStyle: TextStyle(color: Colors.black38)),
                      ),
                    ),
                    Text(" "),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      height: 40,
                      width: 370,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 7),
                            hintText: 'Search by Your Location',
                            hintStyle: TextStyle(color: Colors.black38)),
                      ),
                    ),
                    Text(" "),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      height: 40,
                      width: 370,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 7),
                            hintText: 'Search by Availability',
                            hintStyle: TextStyle(color: Colors.black38)),
                      ),
                    ),
                    Text(" "),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      height: 40,
                      width: 370,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 7),
                            hintText: 'Search by Insurance Network',
                            hintStyle: TextStyle(color: Colors.black38)),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      width: 390,
                      child: RaisedButton(
                        elevation: 5,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageScreen()),
                          );
                        },
                        padding: EdgeInsets.all(11),
                        color: Color.fromARGB(255, 0, 103, 187),
                        child: Text(
                          'Find Doctor',
                          style: TextStyle(
                              color: Color.fromARGB(255, 252, 252, 252),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Specialities

              Text(" "),
              Text(
                "Specialties",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 103, 187),
                ),
              ),

              SizedBox(height: 10),

              Container(
                width: 90,
                height: 90,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: new DecorationImage(
                    image: AssetImage('images/heart.png'),
                    fit: BoxFit.fill,
                  ),
                ),

                // Browse Doctors

                // Bottom Nav Bar
              )
            ],
          ),
        ));
  }
}
