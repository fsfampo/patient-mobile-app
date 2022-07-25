import 'package:flutter/material.dart';
// import 'package:test2/messagesScreen.dart';
import 'loadingScreen.dart'; // Screen 1 Y
import 'loginScreen.dart'; // Screen 2 Y
import 'forgotPasswordScreen.dart';
import 'benefitsScreen.dart'; // Screen 3 N
import 'moreInfoScreen.dart'; // Screen 4 N
import 'healthInfoRegistration.dart'; // Screen 5 N
import 'healthInfoRegistrationTwo.dart'; // Screen 6 N
// Screen 7: Pin ?
import 'pushNotifScreen.dart'; // Screen 8 Y
import 'locationScreen.dart'; // Screen 9 Y
import 'allSetScreen.dart'; // Screen 10 Y
import 'home_page.dart'; // Screen 11 N
// Screen 12
// Screen 13
// Screen 14
// Screen 15
import 'enterIDScreen.dart'; // Screen 16 Y
// Screen 17
// Screen 18
import 'withoutInsuranceScreen.dart'; // Screen 19
// Screen 20
import 'dropdownBuild.dart';
// import 'messagesScreen.dart';

import 'appointmentScreen.dart';
import 'medicationsScreen.dart';
import 'rpmScreen.dart';
import 'messagesScreen.dart';
import 'emailSentScreen.dart';

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
