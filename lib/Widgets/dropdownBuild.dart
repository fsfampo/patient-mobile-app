import 'package:flutter/material.dart';

class DropdownBuild extends StatefulWidget {
  @override
  _DropdownBuildState createState() => _DropdownBuildState();
}

class _DropdownBuildState extends State<DropdownBuild> {
  List<String> items = ['Male', 'Female'];
  String? selectedItem = 'Male';

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
        child: SizedBox(
          width: 240,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 3, color: Colors.blue)),
            ),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: TextStyle(fontSize: 24)),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem = item),
          ),
        ),
      ));
}
