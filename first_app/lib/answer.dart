import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
    final Function answerHandler;
    final String answerText;
    Answer(this.answerHandler, this.answerText);
    
    @override
    Widget build(BuildContext context){
        return Container(
          width: double.infinity,
          child: RaisedButton(
            color: Colors.lightBlue,
            textColor: Colors.white,
            child: Text(answerText),
            onPressed: answerHandler,
          ),
        );
    }
  
}
