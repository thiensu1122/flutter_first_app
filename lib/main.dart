// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
      {
        'questionText': 'what\'s your favorite color?',
        'answers': ['Black', 'White', 'Yellow', 'Green']
      },
      {
        'questionText': 'what is your favorite animal',
        'answers': ['Cat', 'Dog', 'Rabbit', 'Lion']
      },
      {
        'questionText': 'who\'s your favorite instructor?',
        'answers': ['Bao', 'Bao', 'Bao', 'Bao']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Question(
                questions.elementAt(_questionIndex)['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
