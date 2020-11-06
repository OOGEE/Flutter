import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Button"),
          onPressed: () {
            final snackBar = SnackBar(
              backgroundColor: Colors.blue,
              behavior: SnackBarBehavior.floating,
              content: Text("버튼이 눌렸습니다."),
              duration: Duration(seconds: 3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              action: SnackBarAction(
                label: '닫기',
                textColor: Colors.white,
                onPressed: () {},
              ),
            );
            scaffoldKey.currentState.showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}
