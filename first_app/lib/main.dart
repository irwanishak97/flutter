import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(){
//   runApp(MyApp());
// }

//alternative for satu line of code dalam function
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStateApp();
  }
}

class _MyStateApp extends State<MyApp> {
  final questions = const [
    {
      //first question
      'questionText': 'What\'s is your favourite movie?',
      'answers': ['Harry Potter', 'Narnia', 'Into the night', 'Narcos'],
    },
    {
      //second question
      'questionText': 'What\'s is your favourite color?',
      'answers': ['Blue', 'Red', 'Black', 'Yellow'],
    },
    {
      //third question
      'questionText': 'What\'s is the best food you\'ve eaten?',
      'answers': ['Fish', 'Chicken', 'Meat', 'Bacon'],
    },
    {
      //fourth question
      'questionText': 'Are you single?',
      'answers': ['Yes', 'No', 'Probably', 'I dont know'],
    },
  ];
  
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    
    if(_questionIndex < questions.length){
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('kar1'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                //wrap semua nak bagi tahu yang question in answers is a list of strings
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
