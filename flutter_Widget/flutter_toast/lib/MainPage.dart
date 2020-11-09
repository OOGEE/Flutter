import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toast'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Button"),
          onPressed: () {
            Fluttertoast.showToast(
              msg: "버튼을 눌렀습니다.",
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.lightBlue,
              textColor: Colors.white,
              fontSize: 20,
            );
          },
        ),
      ),
    );
  }
}