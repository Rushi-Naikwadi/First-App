import 'package:flutter/material.dart';

import './QuestionClass.dart';   // Question Widget Class
import './OptionClass.dart';     // Options Widget Class

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
      _mcqIndex %= mcqList.length;
    });
  }

  static const mcqList = [
    {
      'questionText' : 'What is national animal of India ?',
      'optionsList' : ['Lion', 'Tiger', 'Cheetah', 'Elephant'],
    },
    {
      'questionText' : 'Which is the smallest state in India ?',
      'optionList' : ['Kashmir', 'Kerala', 'Goa', 'Rajasthan'],
    },
    {
      'questionText' : 'Which is the capital of Maharashtra ?',
      'optionList' : ['Nagpur', 'Mumbai', 'Pune', 'Nashik'],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Question(
                  questionText: (mcqList[_mcqIndex]['questionText'] as String),
              ),
              ...(mcqList[_mcqIndex]['optionList'] as List<String>).map((option) {
                  return Option(
                      optionText: option,
                      functionPointer: _nextQuestion
                  );
              }).toList()
            ],
          )
      ),
    );
  }
}
