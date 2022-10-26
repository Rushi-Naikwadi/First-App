import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Whoa, You did it!',
        style: TextStyle(
          fontSize: 45,
          color: Colors.blueAccent
        ),
      ),
    );
  }
}
