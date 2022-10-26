import 'package:flutter/material.dart';

class Option extends StatelessWidget {

  final String optionText;
  final Function functionPointer;

  Option ({this.optionText, this.functionPointer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          functionPointer();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[900]
        ),
        child: Text(
            optionText,
            style: TextStyle(
              color: Colors.blue,
            ),
        ),
      ),
    );
  }
}
