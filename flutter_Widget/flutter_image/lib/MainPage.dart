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
        title: Text("Image"),
      ),
      body: Container(
        child: Image.asset(
          'images/seoul.jpg',
          width: 300,
          height: 600,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
