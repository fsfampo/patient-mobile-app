import 'package:flutter/material.dart';
import 'package:test2/Main%20Screens/new_doctors_screen.dart';
import 'package:test2/Main%20Screens/new_doctors_screen_two.dart';
import 'package:test2/Main%20Screens/schedule_appointment_screen.dart';

class CardFour extends StatelessWidget {
  final iconImagePath;

  const CardFour({
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
              MaterialPageRoute(builder: (context) => NewDoctorsScreenTwo()),
            );
          },
          child: Container(
            width: 90,
            height: 90,
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
