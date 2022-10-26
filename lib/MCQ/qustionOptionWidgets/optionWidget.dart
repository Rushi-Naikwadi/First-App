import 'package:flutter/material.dart';

class optionWidget extends StatelessWidget {

  final String optionText;
  final Function functionPointer;

  optionWidget ({this.optionText, this.functionPointer});

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2.5),
      padding: EdgeInsets.all(2.5),
      child: ElevatedButton(
        onPressed: () {
          functionPointer();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[900],
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
