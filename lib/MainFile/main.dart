import 'package:flutter/material.dart';

import '../MCQ/mcqWidget/mcqWidget.dart';
import '../MCQ/mcqStructureClass/mcqStructureClass.dart';
import '../resultPage/resultWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _mcqIndex = 0;
  var _totalScore = 0;

  void _nextQuestion(int score) {
    _totalScore += score;
    setState(() => _mcqIndex++);
  }

  void _resetQuiz() {
    setState(() {
      _mcqIndex = 0;
      _totalScore = 0;
    });
  }

  final mcqList = [
    MCQ (
      'What is the national animal of India ?',
      [
        optionWithScore('Lion', 0),
        optionWithScore('Tiger', 1),
        optionWithScore('Cheetah', 0),
        optionWithScore('Elephant', 0),
      ]
    ),
    MCQ (
      'Which is the smallest state in India ?',
        [
          optionWithScore('Kashmir', 0),
          optionWithScore('Kerala', 0),
          optionWithScore('Goa', 1),
          optionWithScore('Rajasthan', 0),
        ]
    ),
    MCQ (
      'What is the capital of Maharashtra ?',
      [
        optionWithScore('Mumbai', 1),
        optionWithScore('Nagpur', 0),
        optionWithScore('Pune', 0),
        optionWithScore('Nashik', 0),
      ]
    )
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
            ? mcqWidget(_nextQuestion, mcqList[_mcqIndex])
            : resultWidget(_totalScore, _resetQuiz),
      ),
    );
  }
}
