import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  final iconImagePath;

  const CardOne({
    Key? key,
    required this.iconImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
          onTap: () {
            print("A");
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
