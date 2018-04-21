import 'package:flutter/material.dart';
import '../pages/landing_page.dart';
import './text_page.dart';


class AnswerButton extends StatelessWidget {
final bool choix;

  AnswerButton(this.choix);

  @override
  Widget build(BuildContext context) {
    return new Expanded( 
      child: new Container(
        padding: new EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
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
              padding: new EdgeInsets.all(10.0),
              child: new Text("Jumpfzrfze fzeczegze fvzvzee",
                textAlign: TextAlign.center,
                style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
              ),
            )
          ),
        ),
      ),
    );
  }
}