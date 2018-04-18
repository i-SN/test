import 'package:flutter/material.dart';
import '../pages/landing_page.dart';
import '../pages/text_page.dart';


class AnswerButton extends StatelessWidget {
final bool choix;

  AnswerButton(this.choix);

  @override
  Widget build(BuildContext context) {
    return new Expanded( 
      child: new Material(
        color:Colors.greenAccent,
        child: new InkWell(
          onTap: () {
            if(choix == true) return Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()));
            return Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new TextPage("jij")));
          }, 
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0)
              ),
              padding: new EdgeInsets.all(20.0),
              child: new Text("Jump",
                style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
              ),
            )
          ),
        ),
      ),
    );
  }
}