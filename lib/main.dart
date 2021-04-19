//revant imports
import 'package:flutter/material.dart';

//file imports
import './question.dart';

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
    "What is your favourite colour?",
    "Whats on your bucketlist?"
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
              questionText:questions[questionIndex],
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
