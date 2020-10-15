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
                  begin: Alignment(0.5, 0.5),
                  end: Alignment(0.7, 0.7),
                  colors: [
                    const Color(0xFFFF0000),
                    const Color(0xFF00FF00),
                  ],
                  tileMode: TileMode.repeated
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0.5),
                  end: Alignment(0.7, 0.7),
                  colors: [
                    const Color(0xFFFF0000),
                    const Color(0xFF00FF00),
                  ],
                  tileMode: TileMode.mirror
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
                  tileMode: TileMode.repeated
              ),
            ),
          ),
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
                  tileMode: TileMode.mirror
              ),
            ),
          ),
        ],
      ),
    );
  }
}
