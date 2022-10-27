import 'package:flutter/material.dart';

import '../mcqStructureClass/mcqStructureClass.dart';

class optionWidget extends StatelessWidget {

  final optionWithScore option;
  final Function functionPointer;

  optionWidget ({this.option, this.functionPointer});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
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
