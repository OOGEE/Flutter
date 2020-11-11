import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("orientation"),
      ),
      body: Row(
        children: [
          Expanded(
            child: RaisedButton(
              child: Text("Basic"),
              onPressed: () {
                SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
              },
            ),
          ),
          Expanded(
            child: RaisedButton(
              child: Text("Turn Left"),
              onPressed: () {
                SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
              },
            ),
          ),
          Expanded(
            child: RaisedButton(
              child: Text("Turn Right"),
              onPressed: () {
                SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
              },
            ),
          ),
        ],
      ),
    );
  }
}