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
        padding: new EdgeInsets.all(20.0),
        children: <Widget>[
          new CustomListview(
            image:
                "https://www.its.ac.id/news/wp-content/uploads/sites/2/2019/11/images.jpg",
            judul: "Pohon Beringin",
          ),
          new CustomListview(
            image:
                "https://i2.wp.com/rumahtanaman.com/wp-content/uploads/2018/01/Bidara.jpg",
            judul: "Pohon Bidara",
          ),
          new CustomListview(
            image:
                "https://3.bp.blogspot.com/-COtEgMjhBKo/XE-_1R_DaaI/AAAAAAAADTk/Jf-jq9CryLUfgPXHqDB9Pm3aOjIhM_ptACLcBGAs/s1600/Pohon-Rambutan-02.jpg",
            judul: "Pohon Rambutan",
          ),
          new CustomListview(
            image:
                "https://www.its.ac.id/news/wp-content/uploads/sites/2/2019/11/images.jpg",
            judul: "Pohon Beringin",
          ),
          new CustomListview(
            image:
                "https://www.its.ac.id/news/wp-content/uploads/sites/2/2019/11/images.jpg",
            judul: "Pohon Beringin",
          ),
          new CustomListview(
            image:
                "https://www.its.ac.id/news/wp-content/uploads/sites/2/2019/11/images.jpg",
            judul: "Pohon Beringin",
          ),
        ],
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
        child: new Column(
          children: <Widget>[
            new Image(
              image: new NetworkImage(image),
              width: 100.0,
            ),
            new Text(
              judul,
              style: new TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
