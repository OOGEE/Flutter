import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String Message;

  const SecondPage({this.Message});

  @override
  Second createState() => new Second();
}

class Second extends State<SecondPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: myController,
              decoration:
              InputDecoration(hintText: 'MainPage에 띄울 내용을 입력하세요.'),
            ),
            RaisedButton(
              child: Text("Go MainPage"),
              onPressed: () {
                Navigator.pop(context, myController.text);
              },
            ),
            Divider(),
            Text('MainPage에서 보낸 내용'),
            Text(widget.Message),
          ],
        ),
      ),
    );
  }
}