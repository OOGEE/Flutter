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
        title: Text('dialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Show Dialog"),
          onPressed: () => show_Dialog(),
        ),
      ),
    );
  }

  void show_Dialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Dialog"),
          content: Text("다이얼로그 창을 띄웠습니다."),
          actions: <Widget>[
            new FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new FlatButton(
              child: Text("close"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
