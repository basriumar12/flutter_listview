import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Listview App",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Listview App"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.radio),
            title: new Text("Save"),
          ),
          new ListTile(
            leading: new Icon(Icons.save),
            title: new Text("test"),
          ),
          new ListTile(
            leading: new Icon(Icons.hotel),
            title: new Text("Done"),
          ),
          new ListTile(
            leading: new Icon(Icons.shop),
            title: new Text("No"),
          ),
        ],
      ),
    );
  }
}
