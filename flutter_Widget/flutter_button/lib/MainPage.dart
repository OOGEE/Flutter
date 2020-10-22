import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Text("Flat Button"),
                  onPressed: () {},
                  onLongPress: () {},
                  textColor: Colors.white,
                  color: Colors.green,
                  splashColor: Colors.red,
                  highlightColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(color: Colors.red, width: 3),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton.icon(
                  label: Text("Flat Icon Button"),
                  icon: Icon(Icons.check_box),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: OutlineButton(
                  child: Text("Out Line Button"),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: OutlineButton.icon(
                  label: Text("Out Line Icon Button"),
                  icon: Icon(Icons.check_box),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  child: Text("Raised Button"),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: RaisedButton.icon(
                  label: Text("Raised Icon Button"),
                  icon: Icon(Icons.check_box),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(),
          IconButton(
            icon: Icon(Icons.favorite_border),
            color: Colors.red,
            onPressed: () {},
          ),
          Divider(),
          InkWell(
            child: Text(
              "InkWell",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  backgroundColor: Colors.black),
            ),
            onTap: () {},
            onDoubleTap: () {},
          ),
          Divider(),
          FlatButton(
            child: Image.asset('images/seoul.jpg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
