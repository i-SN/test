import 'package:flutter/material.dart';
import '../pages/landing_page.dart';
import '../pages/login_page.dart';


class Drawerscreen extends StatefulWidget {
  @override
  _DrawerscreenState createState() => new _DrawerscreenState();
}

class _DrawerscreenState extends State<Drawerscreen> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: 
      new SizedBox.expand(
        child: new LandingPage(),
      ),
      

      
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Acceuil"),
              trailing: new Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()));
              }
            ),
            new ListTile(
              title: new Text("login"),
              trailing: new Icon(Icons.rotate_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Loginscreen()));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Cancel"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}