import 'package:flutter/material.dart';

import 'package:first_app/MCQ/qustionOptionWidgets/questionWidget.dart';
import 'package:first_app/MCQ/qustionOptionWidgets/optionWidget.dart';
import 'package:first_app/MCQ/mcqStructureClass/mcqStructureClass.dart';

class mcqWidget extends StatelessWidget {
  final MCQ curMCQ;
  final Function functionPointer;
  mcqWidget (this.functionPointer, this.curMCQ);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 150),
        questionWidget(
          questionText: curMCQ.questionText,
        ),
        SizedBox(height: 10),
        ...(curMCQ.optionList).map((optionDetail) {
          return optionWidget(
              option: optionDetail,
              functionPointer: functionPointer
          );
        }).toList(),
      ],
    );
  }
}
