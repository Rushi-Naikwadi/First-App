import 'package:flutter/material.dart';

class questionWidget extends StatelessWidget {
  final String questionText;
  questionWidget ({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.cyan
      ),
      width: double.infinity,
      padding: EdgeInsets.all(10),
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
