import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView_Page extends StatefulWidget {
  @override
  _ListView createState() => _ListView();
}

class _ListView extends State<ListView_Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            child: RaisedButton(
              child: Text("버튼 1"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            child: RaisedButton(
              child: Text("버튼 2"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            child: RaisedButton(
              child: Text("버튼 3"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            child: RaisedButton(
              child: Text("버튼 4"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            child: RaisedButton(
              child: Text("버튼 5"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            child: RaisedButton(
              child: Text("버튼 6"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}