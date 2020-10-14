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
        title: Text('Gradient'),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.2, 0.5, 0.8],
                colors: [
                  const Color(0xFFFF0000),
                  const Color(0xFF00FF00),
                  const Color(0xFF0000FF),
                ],
              ),
            ),
          ),
          Divider(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.1, 0.1),
                stops: [0.1, 1],
                colors: [
                  const Color(0xFFDDDD00),
                  const Color(0xFFAA00AA),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
