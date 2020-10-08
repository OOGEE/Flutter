import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  Third createState() => new Third();
}

class Third extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Go Main Page"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}