import 'package:flutter/material.dart';

class questionWidget extends StatelessWidget {
  final String questionText;
  questionWidget ({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.cyan
      ),
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Center(
        child: Text(
            questionText,
            style: TextStyle(
              fontSize: 22
            ),
            textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
