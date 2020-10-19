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
          Row(
            children: [
              Text(
                "Text",
                style: TextStyle(fontSize: 60),
              ),
              RaisedButton(
                child: Text("Button", style: TextStyle(fontSize: 60),),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          Container(
            child: Image(
              image: AssetImage('images/seoul.jpg'),
            ),
          ),
          Divider(),
          Container(
            child: Image(
              image: AssetImage('images/jeju.jpg'),
            ),
          )
        ],
      ),
    );
  }
}