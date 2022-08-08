import 'package:flutter/material.dart';
import 'package:test2/Main%20Screens/appointment_screen.dart';
import 'package:test2/Main%20Screens/home_page.dart';
import 'package:test2/Main%20Screens/schedule_appointment_screen.dart';

class AppointmentCard extends StatelessWidget {
  final iconImagePath;

  const AppointmentCard({
    Key? key,
    required this.iconImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppointmentScreen()),
            );
          },
          child: Container(
            width: 65,
            height: 65,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 10,
                    spreadRadius: 2)
              ],
              image: new DecorationImage(
                image: AssetImage(iconImagePath),
                // fit: BoxFit.fill,
              ),
            ),
          ))
    ]);
  }
}
