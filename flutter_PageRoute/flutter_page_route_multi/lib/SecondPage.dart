import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  Second createState() => new Second();
}

class Second extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
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