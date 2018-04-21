import 'package:flutter/material.dart';
import '../histoire/ame/home.dart';


class Loginscreen extends StatefulWidget {

  @override
  LoginscreenState createState() => new LoginscreenState();
}

class LoginscreenState extends State<Loginscreen> {

  bool enable = false ;
  String _text = ''; 

  void onPressed() {
    _text=_controller.text;
    if(_text==""){ 
    }else{
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AmePage(_text)));
    print(_text);
    }
  }

  void onChanged(String value) {
    setState((){
          _text = value;
           if(_text==""){
           enable=false;
            }else{
            enable=true;
           }
        }
    );
  }


  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 40.0),
                child: new TextField(
                onChanged: (String value){onChanged(value);},
                controller: _controller,
                decoration: new InputDecoration(
                  hintStyle:  new TextStyle(color: Colors.black45, fontWeight:FontWeight.w300 , fontSize: 23.0),
                  hintText: 'ENTRER VOTRE NOM', 
                  labelStyle:  new TextStyle(letterSpacing: 2.0, color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                  labelText: 'QUEL EST VOTRE NOM?', 
                ),
              ),
              ),
                        new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: enable == true ? Colors.white : Colors.white70,
                        child: new Icon(Icons.send),
                        splashColor:  enable == false ? Colors.white70 :Colors.redAccent,
                        textColor: Colors.black,
                        onPressed: (){onPressed();}
              ),
              new Padding(padding: new EdgeInsets.only(top: 75.0)),
            ],
          ),
        ),
      ),
    );
  }
}