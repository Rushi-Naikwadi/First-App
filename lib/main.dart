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
  var mcqIndex = 0;

  var questions = [
    "what is national animal of India ?",
    "Which is the smallest state in India ?",
    "Which is the capital of Maharashtra ?"
  ];

  var options = [
    ['Lion', 'Tiger', 'Cheetah', 'Elephant'],
    ['Kashmir', 'Kerala', 'Goa', 'Rajasthan'],
    ['Nagpur', 'Mumbai', 'Pune', 'Nashik']
  ];

  List<Map<String, Object>> MCQ = [
    {
      'questionText' : 'What is national animal of India ?',
      'optionsList' : ['Lion', 'Tiger', 'Cheetah', 'Elephant']
    },
    {
      'questionText' : 'Which is the smallest state in India ?',
      'optionList' : ['Kashmir', 'Kerala', 'Goa', 'Rajasthan']
    },
    {
      'questionText' : 'Which is the capital of Maharashtra ?',
      'optionList' : ['Nagpur', 'Mumbai', 'Pune', 'Nashik']
    }
  ];

  void nextQuestion() {
    setState(() {
      mcqIndex++;
      mcqIndex %= MCQ.length;
    });
  }

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
                  questionText: MCQ[mcqIndex]['questionText'],
              ),
              Option(
                option: options[mcqIndex][1],
                functionPointer: nextQuestion,
              ),
              Option(
                option: options[mcqIndex][1],
                functionPointer: nextQuestion,
              ),
              Option(
                option: options[mcqIndex][2],
                functionPointer: nextQuestion,
              ),
              Option(
                option: options[mcqIndex][3],
                functionPointer: nextQuestion,
              )
            ],
          )
      ),
    );
  }
}
