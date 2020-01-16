import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Listview App",
    home: new Home(data: new List<String>.generate(300, (panjangData) => "data ke $panjangData",),),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  final List <String> data;
  Home ({this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Listview App"),
      ),
      body: new Container(
        child: new ListView.builder(itemCount : data.length,
        itemBuilder: (context, index){
          return new ListTile(
            leading: new Icon(Icons.image),
            title: new Text("${data[index]}"),
          );
        }
        ),
      ),
    );
  }
}

class CustomListview extends StatelessWidget {
  CustomListview({this.image, this.judul});

  final String image;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(image),
              width: 100.0,
            ),
           new Container(
             padding: EdgeInsets.all(10.0),
             child: new Center(
               child: new Column(
                 children: <Widget>[
                   new Text(
                     judul,
                     style: new TextStyle(fontSize: 20.0),
                   ),
                   //solusi police line masukin dalam container, terus masuki dalam child
                   new Container(
                     width: 200.0,
                     child:
                     new Text("bisa di isi deskrip adada da da dsi", style: new TextStyle(fontSize :15.0),),
                   )
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
