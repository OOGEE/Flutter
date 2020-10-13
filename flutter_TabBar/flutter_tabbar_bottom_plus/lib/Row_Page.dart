import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row_Page extends StatefulWidget {
  @override
  _Row createState() => _Row();
}

class _Row extends State<Row_Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: RaisedButton(
              child: Text("버튼 1"),
              color: Colors.red,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: RaisedButton(
              child: Text("버튼 2"),
              color: Colors.green,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: RaisedButton(
              child: Text("버튼 3"),
              color: Colors.blue,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}