import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 25) {
      resultText = "You are awesome BRO!!!!!!";
    } else if (resultScore <= 15) {
      resultText = "Somewhat good";
    } else if (resultScore <= 10) {
      resultText = "Maybe you should try again";
    } else {
      resultText = "You should definatly try again!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
