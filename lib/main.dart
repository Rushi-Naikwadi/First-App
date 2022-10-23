import 'package:flutter/material.dart';

import 'package:first_app/QuestionClass.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    "What is national animal of India ?",
    "Which is the smallest state in India ?",
    "What is capital of Maharastra ?"
  ];

  void nextQuestion() {
    setState(() {
      questionIndex++;
      questionIndex %= questions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My-First-App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Question(
                  questions[questionIndex]
              ),
              ElevatedButton(
                onPressed: () {
                  print('Option 1 chosen');
                  nextQuestion();
                },
                child: Text('Barak Obama'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Option 2 chosen');
                  nextQuestion();
                },
                child: Text('Shinjo Abe'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Option 3 chosen');
                  nextQuestion();
                },
                child: Text('Atalbihari Vajpei'),
              ),
            ],
          )
      ),
    );
  }
}
