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
        title: Text('ListView'),
      ),
      body: ListView(
        children: [
          Text(
            "Text1",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text2",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text3",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text4",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text5",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text6",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text7",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text8",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text9",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
          Text(
            "Text10",
            style: TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue),
          ),
          Divider(),
        ],
      ),
    );
  }
}