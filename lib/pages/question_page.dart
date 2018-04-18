import 'package:flutter/material.dart';
import '../utils/bouton.dart';


class Bouton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ 
          new Padding(padding: new EdgeInsets.only(bottom: 75.0)),
            new AnswerButton(true),
            new AnswerButton(true),
            new AnswerButton(false),
            new Padding(padding: new EdgeInsets.only(bottom: 75.0)),
        ]
      ),
    );
  }
}