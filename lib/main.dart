//revant imports
import 'package:flutter/material.dart';

//file imports
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
  }

  var questions = [
    {
      "questionText": "What is your favourite colour?",
      "answers": ["Black", "Blue", "Brown", "White"]
    },
    {
      "questionText": "Whats on your bucketlist?",
      "answers": ["Sky diving", "Camping", "Surfing", "Hiking"]
    },
    {
      "questionText": "Who is your favourite person?",
      "answers": ["Rob", "Ben", "Jerry", "Dan"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questionText: questions[questionIndex]["questionText"],
            ),
            // ignore: deprecated_member_use
            ...(questions[questionIndex]["answers"]as List<String >).map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
