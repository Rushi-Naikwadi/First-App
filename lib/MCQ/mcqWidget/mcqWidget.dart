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
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 125),
          questionWidget(
            questionText: curMCQ.questionText,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: optionWidget(
                  option: (curMCQ.optionList).elementAt(0),
                  functionPointer: functionPointer
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: optionWidget(
                    option: (curMCQ.optionList).elementAt(1),
                    functionPointer: functionPointer
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: optionWidget(
                    option: (curMCQ.optionList).elementAt(2),
                    functionPointer: functionPointer
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: optionWidget(
                    option: (curMCQ.optionList).elementAt(3),
                    functionPointer: functionPointer
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
