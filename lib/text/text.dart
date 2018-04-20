import 'package:flutter/material.dart';

// TEXTE // 
List<TextSpan> text = [
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style:new TextStyle( color: Colors.amberAccent, fontSize: 20.0)),
  new TextSpan(text: 'Domestic life was never quite my style \n', 
  style:new TextStyle( color: Colors.white, fontSize: 20.0)),
  new TextSpan(text: 'When you smile, you knock me out, I fall apart \n', 
  style:new TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
  new TextSpan(text: 'And I thought I was so smart And I thought I was so smartAnd I thought I was so smart \n', 
  style:new TextStyle( color: Colors.white, fontStyle:FontStyle.italic, fontSize: 20.0)),
  ];


// --  Moreau d'histoire  -- //

    class Ligne {

    TextSpan texte; //texte // 
    final int ligne;  // nombre de ligne //

    Ligne(this.texte,this.ligne);
    }

// HISTOIRE (texte+ligne)//
List<Ligne> histoire=[
  new Ligne(text[0],2),
  new Ligne(text[1],2),
  new Ligne(text[2],2),
  new Ligne(text[3],3)
];