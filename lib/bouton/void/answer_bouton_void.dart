import 'package:flutter/material.dart';
import '../../histoire/void/home.dart';

// LIEU // --> VOID
  String lieu="void";

// TEXTE DES BOUTONS // 
List<Text> texte=[
  new Text("refefzv efvsc ff",
  style: ame,)
];

// Style du texte //

// style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
TextStyle ame = new TextStyle( color: lieu=="limbes" ? Colors.grey[350] : Colors.amberAccent, fontSize: 20.0);
TextStyle cauchemar = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle reve = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle hero = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);

// ROUTES // 
List<Widget> chemin=[
  new VoidPage("nom"),
];

class AnswerButton extends StatelessWidget {

  int text; //texte //  
  int chemins; // route //

  AnswerButton(this.text, this.chemins);
  

  @override
  Widget build(BuildContext context) {
    return new Expanded( 
      child: new Container(
        padding: new EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
        child: new InkWell(
          onTap: () {
            return Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => chemin[chemins]));
          }, 
          
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(color: texte[text].style.color, width: 5.0)
              ),
              padding: new EdgeInsets.all(10.0),
              child: texte[text],
            )
          ),
        ),
      ),
    );
  }
}

List<AnswerButton> choix=[
 new AnswerButton(0, 0)
];