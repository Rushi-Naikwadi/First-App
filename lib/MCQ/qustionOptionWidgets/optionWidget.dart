import 'package:flutter/material.dart';

import '../mcqStructureClass/mcqStructureClass.dart';

class optionWidget extends StatelessWidget {

  final optionWithScore option;
  final Function functionPointer;

  optionWidget ({this.option, this.functionPointer});

  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 370,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        onPressed: () {
          functionPointer(option.optionScore);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
        ),
        child: Text(
            option.optionText,
            style: TextStyle(
              fontSize: 20,
            ),
        ),
      ),
    );
  }
}
