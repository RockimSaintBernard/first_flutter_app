// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are Awesome";
      print("Your score is: $resultScore");
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable";
      print("Your score is: $resultScore");
    } else if (resultScore <= 16) {
      resultText = "Strange";
      print("Your score is: $resultScore");
    } else {
      resultText = "You are so bad!";
    }
    return (resultText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            //Text(resultScore.toString())
           //children
        
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,);
  }
}
