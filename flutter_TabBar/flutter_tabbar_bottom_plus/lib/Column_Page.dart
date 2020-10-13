import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Column_Page extends StatefulWidget {
  @override
  _Column createState() => _Column();
}

class _Column extends State<Column_Page>{
  final TextController = TextEditingController();
  String TextString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: TextController,
          ),
          RaisedButton(
            child: Text("버튼"),
            onPressed: () {
              setState(() {
                TextString = TextController.text;
              });
            },
          ),
          Text(TextString),
        ],
      ),
    );
  }
}