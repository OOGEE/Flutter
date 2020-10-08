import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  final myController = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
          child: Column(
            children: [
              TextField(
                controller: myController,
                decoration: InputDecoration(hintText: "10진수로 변형할 16진수를 입력하세요"),
              ),
              RaisedButton(
                child: Text('16진수 -> 10진수'),
                onPressed: () => setnum(),
              ),
              Divider(),
              Text(
                "변형된 값 : " + text,
              ),
            ],
          )
      ),
    );
  }

  void setnum() {
    int num = int.parse(myController.text, radix: 16);
    setState(() {
      text = num.toString();
    });
  }
}