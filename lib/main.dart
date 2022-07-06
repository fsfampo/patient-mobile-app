import 'dart:html';
import 'package:flutter/material.dart';
import 'loadingScreen.dart'; // Screen 1 Y
import 'loginScreen.dart'; // Screen 2 Y
import 'benefitsScreen.dart'; // Screen 3 N
import 'moreInfoScreen.dart'; // Screen 4 N
import 'healthInfoRegistration.dart'; // Screen 5 N
import 'healthInfoRegistrationTwo.dart'; // Screen 6 N
// Screen 7: Pin ?
import 'pushNotifScreen.dart'; // Screen 8 Y  
import 'locationScreen.dart'; // Screen 9 Y
import 'allSetScreen.dart'; // Screen 10 Y
import 'Main Pages/home_page.dart'; // Screen 11 N
// Screen 12
// Screen 13
// Screen 14
// Screen 15
import 'enterIDScreen.dart'; // Screen 16 Y
// Screen 17
// Screen 18
// Screen 19
// Screen 20
import 'dropdownBuild.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Mobile',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
