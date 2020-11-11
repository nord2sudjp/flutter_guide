import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
  build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];

    //return MaterialApp(home: Text('Hello!'));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        //body: Text('This is my default text!'),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
