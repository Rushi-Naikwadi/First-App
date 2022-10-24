import 'package:flutter/material.dart';

import './main.dart';

class Option extends StatelessWidget {

  final String option;
  final Function functionPointer;

  Option ({this.option, this.functionPointer});

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
            option,
            style: TextStyle(
              color: Colors.blue,
            ),
        ),
      ),
    );
  }
}
