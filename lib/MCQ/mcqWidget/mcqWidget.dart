import 'package:flutter/material.dart';

import 'package:first_app/MCQ/qustionOptionWidgets/questionWidget.dart';
import 'package:first_app/MCQ/qustionOptionWidgets/optionWidget.dart';
import 'package:first_app/MCQ/mcqStructureClass/mcqStructureClass.dart';

class mcqWidget extends StatelessWidget {
  final curMCQ;
  final Function functionPointer;
  mcqWidget (this.functionPointer, this.curMCQ);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        questionWidget(
          questionText: curMCQ.questionText,
        ),
        ...(curMCQ.optionList).map((option) {
          return optionWidget(
              optionText: option,
              functionPointer: functionPointer
          );
        }).toList(),
      ],
    );
  }
}
