import 'package:flutter/material.dart';

import './QuestionClass.dart';   // Question Widget Class
import './OptionClass.dart';     // optionList Widget Class

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
    setState(() {
      _mcqIndex++;
      _mcqIndex = _mcqIndex % questionList.length;
    });
  }

  var questionList = [
    "what is national animal of India ?",
    "Which is the smallest state in India ?",
    "Which is the capital of Maharashtra ?"
  ];

  var optionList = [
    ['Lion', 'Tiger', 'Cheetah', 'Elephant'],
    ['Kashmir', 'Kerala', 'Goa', 'Rajasthan'],
    ['Nagpur', 'Mumbai', 'Pune', 'Nashik']
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
          body: Column(
            children: [
              Question(
                  questionText: questionList[_mcqIndex],
              ),
              Option(
                optionText: optionList[_mcqIndex][0],
                functionPointer: _nextQuestion,
              ),
              Option(
                optionText: optionList[_mcqIndex][1],
                functionPointer: _nextQuestion,
              ),
              Option(
                optionText: optionList[_mcqIndex][2],
                functionPointer: _nextQuestion,
              ),
              Option(
                optionText: optionList[_mcqIndex][3],
                functionPointer: _nextQuestion,
              )
            ],
          )
      ),
    );
  }
}
