import 'package:flutter/material.dart';

import './QuestionClass.dart';   // Question Widget Class
import './OptionClass.dart';     // optionList Widget Class
import './ResultClass.dart';     // Result Screen Widget Class
import './MCQs.dart';            // MCQs Class

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _mcqIndex = 0;

  void _nextQuestion() {
    setState(() => _mcqIndex++);
  }

  // var questionList = [
  //   "what is national animal of India ?",
  //   "Which is the smallest state in India ?",
  //   "Which is the capital of Maharashtra ?"
  // ];
  //
  // var optionList = [
  //   ['Lion', 'Tiger', 'Cheetah', 'Elephant'],
  //   ['Kashmir', 'Kerala', 'Goa', 'Rajasthan'],
  //   ['Nagpur', 'Mumbai', 'Pune', 'Nashik']
  // ];

  var mcqList = [
    MCQ('What is national animal of India', ['Lion', 'Tiger', 'Cheetah', 'Elephant']),
    MCQ('Which is the smallest state in India ?', ['Kashmir', 'Kerala', 'Goa']),
    MCQ('Which is the capital of Maharashtra ?', ['Nagpur', 'Mumbai', 'Pune', 'Nashik'])
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: _mcqIndex < mcqList.length
            ? Column(
              children: [
                Question(
                    questionText: mcqList[_mcqIndex].questionText,
                ),
                ...(mcqList[_mcqIndex].optionList).map((option) {
                  return Option(
                    optionText: option,
                    functionPointer: _nextQuestion
                  );
                }).toList(),
              ],
            )
            : Result(),
      ),
    );
  }
}
