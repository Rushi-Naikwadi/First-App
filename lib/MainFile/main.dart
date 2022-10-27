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
      'What is the national animal of India?',
      [
        optionWithScore('Lion', 0),
        optionWithScore('Tiger', 1),
        optionWithScore('Cheetah', 0),
        optionWithScore('Elephant', 0),
      ]
    ),
    MCQ (
      'Which is the smallest state in India?',
        [
          optionWithScore('Kashmir', 0),
          optionWithScore('Kerala', 0),
          optionWithScore('Goa', 1),
          optionWithScore('Rajasthan', 0),
        ]
    ),
    MCQ (
      'What is the capital of Maharashtra?',
      [
        optionWithScore('Mumbai', 1),
        optionWithScore('Nagpur', 0),
        optionWithScore('Pune', 0),
        optionWithScore('Nashik', 0),
      ]
    ),
    MCQ (
      'Which is the biggest district in Maharashtra by area?',
      [
        optionWithScore('Pune', 0),
        optionWithScore('Nashik', 0),
        optionWithScore('Mumbai', 0),
        optionWithScore('Ahmednagar', 1)
      ]
    ),
    MCQ (
      'Which of following is the country with highest population?',
      [
        optionWithScore('India', 0),
        optionWithScore('Russia', 0),
        optionWithScore('China', 1),
        optionWithScore('Canada', 0)
      ]
    ),
    MCQ (
      'Which is most literate state in India?',
      [
        optionWithScore('Kerala', 1),
        optionWithScore('Karnataka', 0),
        optionWithScore('Delhi', 0),
        optionWithScore('Punjab', 0)
      ]
    ),
    MCQ (
      'Which city is called as "City of Dreams"?',
      [
        optionWithScore('Delhi', 0),
        optionWithScore('Bangalore', 0),
        optionWithScore('Hyderabad', 0),
        optionWithScore('Mumbai', 1)
      ]
    ),
    MCQ (
        'Which is the geographical centre  of India?',
        [
          optionWithScore('Nagpur', 1),
          optionWithScore('Kolhapur', 0),
          optionWithScore('Belgaum', 0),
          optionWithScore('Satara', 0)
        ]
    ),
    MCQ (
        'Which of following is not a car manufacturing brand?',
        [
          optionWithScore('Nike', 1),
          optionWithScore('Tesla', 0),
          optionWithScore('Bentley', 0),
          optionWithScore('Porsche', 0)
        ]
    ),
    MCQ (
        'In which rank India is in area?',
        [
          optionWithScore('10', 0),
          optionWithScore('2', 0),
          optionWithScore('7', 1),
          optionWithScore('6', 0)
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
          backgroundColor: Colors.grey[800],
        ),
        body: _mcqIndex < mcqList.length
            ? mcqWidget(_nextQuestion, mcqList[_mcqIndex])
            : resultWidget(_totalScore, mcqList.length, _resetQuiz),
        backgroundColor: Colors.grey[400],
      ),
    );
  }
}
