import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/Main%20Screens/education_screen.dart';
import 'package:test2/Main%20Screens/insurance_screen.dart';
import 'package:test2/Main%20Screens/medical_records_screen.dart';
import 'package:test2/Main%20Screens/medical_records_seven.dart';
import 'package:test2/Main%20Screens/online_forms_screen.dart';
import 'package:test2/Main%20Screens/billing_screen.dart';
import 'home_page.dart';

class PersonalInformationScreen extends StatefulWidget {
  @override
  _PersonalInformationScreen createState() => _PersonalInformationScreen();
}

class _PersonalInformationScreen extends State<PersonalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Make Color of Screen White
      body: SafeArea(
        child: Column(children: [
          // App Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.arrow_back_ios),
              Text(
                "Luke Obrique",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Last Visit:",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "19 December 2020",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Next Visit:",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "12 January 2021",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),

          // Online Forms
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 390,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnlineFormsScreen()),
                    );
                  },
                  padding: EdgeInsets.all(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Text(
                    '📝  Online Forms                                   >',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          // Payments
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 390,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BillingScreen()),
                    );
                  },
                  padding: EdgeInsets.all(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Text(
                    '🧾  Payments                                        >',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          // Medical Records
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 390,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MedicalRecordsScreenSeven()),
                    );
                  },
                  padding: EdgeInsets.all(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Text(
                    '⚕️  Medical Records                             >',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          // Insurance
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 390,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InsuranceScreen()),
                    );
                  },
                  padding: EdgeInsets.all(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Text(
                    '💲   Insurance                                        >',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          // Education
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 390,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EducationScreen()),
                    );
                  },
                  padding: EdgeInsets.all(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Text(
                    '🏫  Education                                         >',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          //Notifications
          Text(
            "Notifications",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Text(
            "New Lab Results - 5:30 pm",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ]),
      ),
    );
  }
}
