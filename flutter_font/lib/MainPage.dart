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
        title: Text("Font"),
      ),
      body: Center(
        child: Text(
          "마루 부리체",
          style: TextStyle(fontFamily: 'MaruBuri', fontSize: 30),
        ),
      ),
    );
  }
}
