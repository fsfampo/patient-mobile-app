import 'package:flutter/material.dart';
// import 'package:test2/messagesScreen.dart';
import 'Registration Screens/loading_screen.dart'; // Screen 1 Y
import 'Registration Screens/login_screen.dart'; // Screen 2 Y
import 'Registration Screens/forgot_pw_screen.dart';
import 'Registration Screens/personal_info_reg_screen.dart'; // Screen 3 N
import 'Registration Screens/insurance_info_reg_screen.dart'; // Screen 4 N
import 'Registration Screens/current_health_info_one_screen.dart'; // Screen 5 N
import 'Registration Screens/current_health_info_two_screen.dart'; // Screen 6 N
// Screen 7: Pin ?
import 'Registration Screens/push_notif_screen.dart'; // Screen 8 Y
import 'Registration Screens/share_location_screen.dart'; // Screen 9 Y
import 'Registration Screens/all_set_screen.dart'; // Screen 10 Y
import 'Main Screens/home_page.dart'; // Screen 11 N
// Screen 12
// Screen 13
// Screen 14
// Screen 15
import 'Registration Screens/enterIDScreen.dart'; // Screen 16 Y
// Screen 17
// Screen 18
import 'Registration Screens/no_insurance_screen.dart'; // Screen 19
// Screen 20
import 'Widgets/dropdownBuild.dart';
// import 'messagesScreen.dart';

import 'Main Screens/appointment_screen.dart';
import 'Main Screens/medications_screen.dart';
import 'Main Screens/rpm_screen.dart';
import 'Main Screens/messages_screen.dart';
import 'Registration Screens/email_sent_screen.dart';

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
