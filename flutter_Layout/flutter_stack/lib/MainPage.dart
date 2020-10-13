import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        backgroundColor: const Color(0xFFFF5000),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  const Color(0xFFFF0000),
                  const Color(0xFFFFFF00),
                ],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 50,
            child: Text("좌측 상단 텍스트", style: TextStyle(color: const Color(0xFFFFFFFF)),),
          ),
          Positioned(
            right: 50,
            bottom: 50,
            child: RaisedButton(
              child: Text("우측 하단 버튼"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}