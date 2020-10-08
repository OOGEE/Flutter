import 'dart:ui';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  Color currentColor = Color(0xFF000000);
  String ColorText = '';
  int R, G, B;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  RaisedButton(
                    child: Text("빨간색"),
                    color: Color(0xFFFF0000),
                    textColor: Colors.white,
                    onPressed: () => setColor(Color(0xFFFF0000), "빨간색"),
                  ),
                  RaisedButton(
                    child: Text("주황색"),
                    color: Color(0xFFFF6600),
                    textColor: Colors.white,
                    onPressed: () => setColor(Color(0xFFFF6600), "주황색"),
                  ),
                  RaisedButton(
                    child: Text("노란색"),
                    color: Color(0xFFFFFF00),
                    textColor: Colors.black,
                    onPressed: () => setColor(Color(0xFFFFFF00), "노란색"),
                  ),
                ],
              ),
              Row(
                children: [
                  RaisedButton(
                    child: Text("초록색"),
                    color: Color(0xFF00FF00),
                    textColor: Colors.white,
                    onPressed: () => setColor(Color(0xFF00FF00), "초록색"),
                  ),
                  RaisedButton(
                    child: Text("파란색"),
                    color: Color(0xFF0000FF),
                    textColor: Colors.white,
                    onPressed: () => setColor(Color(0xFF0000FF), "파란색"),
                  ),
                  RaisedButton(
                    child: Text("보라색"),
                    color: Color(0xFF660066),
                    textColor: Colors.white,
                    onPressed: () => setColor(Color(0xFF660066), "보라색"),
                  ),
                ],
              ),
              Text(
                "현재 고른 색 : " + ColorText,
              ),
              Divider(),
              RaisedButton(
                child: Text('고른 색상 RGB 값 추출'),
                onPressed: () => setNum(),
              ),
              Text(
                "R 값 : " + R.toString(),
              ),
              Text(
                "G 값 : " + G.toString(),
              ),
              Text(
                "B 값 : " + B.toString(),
              ),
            ],
          )
      ),
    );
  }

  void setColor(Color color, String Text){
    setState(() {
      currentColor = color;
      ColorText = Text;
    });
  }

  void setNum() {
    String CTS;
    CTS = currentColor.toString();
    int Index = CTS.indexOf(')');
    setState(() {
      R = int.parse(CTS.substring(Index-6, Index-4), radix : 16);
      G = int.parse(CTS.substring(Index-4, Index-2), radix : 16);
      B = int.parse(CTS.substring(Index-2, Index), radix : 16);
    });
  }
}