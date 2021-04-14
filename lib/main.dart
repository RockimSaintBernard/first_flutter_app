import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
            Text(questions.elementAt(0)),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 choosen!");
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print("Answer 3 choosen!!"),
            ),
          ],
        ),
      ),
    );
  }
}
