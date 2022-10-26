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
  void _nextQuestion() {
    setState(() => _mcqIndex++);
  }

  final mcqList = [
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
          body: _mcqIndex < mcqList.length ? mcqWidget(_nextQuestion, mcqList[_mcqIndex]) : Result(),
      ),
    );
  }
}
