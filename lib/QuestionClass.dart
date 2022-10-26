import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question ({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.red
      ),
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Text(
          questionText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellowAccent,
          ),
          textAlign: TextAlign.center,
      ),
    );
  }
}
