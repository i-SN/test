import 'package:flutter/material.dart';
import 'question_page.dart';





class TextPage extends StatefulWidget {
  final String nom;

TextPage(this.nom);

  @override
  TextPageState createState() => new TextPageState(this.nom);
}

class TextPageState extends State<TextPage> {

final String nom;
int bouton=1;
int ligne=2;
bool enable=false;
double height=210.0;
ScrollController scrollController= new ScrollController(initialScrollOffset: 50.0);


  void onPressed() {
    setState((){ 
    bouton=bouton+1;
    
     scrollController.animateTo((ligne+2)*20+ligne*3.75, duration: new Duration(seconds: 1), curve: Curves.easeInOut);
     print(scrollController);
   
      if(bouton==1){ 
        ligne=2;
    }else{
        if(bouton==2){
          ligne=4;
      }else{
            if(bouton==3){
              ligne=6;
          }else{
              if(bouton==4){ 
                ligne=13;
                enable=true;
              }else{
               Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new Bouton()), (Route route) => route == null);
              }
          }
      }
    }

  }
    ); 
  }

//((height-160)/10)*(ligne+1)/2

TextPageState(this.nom);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.redAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
            new Text("Bonjour ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
            new Text(nom.toUpperCase(),  style: new TextStyle(letterSpacing: 2.0, color: Colors.white, fontWeight: FontWeight.w300, fontSize: 50.0),),
            new Container(
              height: height,
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0), 
              color: Colors.redAccent,
              child :
                new ListView(
                    padding: const EdgeInsets.all(20.0),
                    controller: scrollController,
                    shrinkWrap: true,
                    children: <Widget>[
                      new Text( 
                        'I\'m dedicating every day to you \n Domestic life was never quite my style \n When you smile, you knock me out, I fall apart \n And I thought I was so smart And I thought I was so smartAnd I thought I was so smartAnd I thought I was so smartAnd I thought I was so smartAnd I thought I was so smart',
                         style:new TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                         textAlign: TextAlign.center,
                         maxLines: ligne,
                         overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
            ),
            new IconButton(
              icon: enable == true ? new Icon(Icons.expand_more):new Icon(Icons.swap_vert),
              color: Colors.white,
              iconSize: 80.0,
              onPressed: (){onPressed();}
            ),
        ]
      ),
    );
  }
}