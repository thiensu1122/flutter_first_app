// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   var app = MyApp();
//   runApp(app);
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what \'s your favorite color?",
      "what is your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 2 chosen"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print("Answer 3 chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
