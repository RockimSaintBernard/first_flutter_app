import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("answer the questions");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Column(
          children: <Widget>[
            Text("The question!"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 choosen!");
              },
            ),
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
