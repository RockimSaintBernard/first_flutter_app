import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String userName(String name) {
  String toPrint = "My name is: ${name}";
  return toPrint;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String myName = userName("Rockim");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
        ),
        body: Text("Welcome ${myName}"),
      ),
    );
  }
}
