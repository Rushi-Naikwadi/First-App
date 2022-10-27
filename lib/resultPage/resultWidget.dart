import 'package:flutter/material.dart';

class resultWidget extends StatelessWidget {

  final Function _resetQuiz;
  final int _totalScore;
  final int _totalQuestions;

  resultWidget(this._totalScore, this._totalQuestions, this._resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your Score : $_totalScore / $_totalQuestions',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black
            ),
          ),
          SizedBox(height: 10),
          FloatingActionButton.extended(
              onPressed: _resetQuiz,
              icon: Icon(Icons.lock_reset_sharp),
              label: Text('Play again!')
          )
        ],
      ),
    );
  }
}
