import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String Message;
  final int Num;

  const SecondPage({this.Message, this.Num});

  @override
  Second createState() => new Second();
}

class Second extends State<SecondPage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  List<String> list = new List<String>();

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
              controller: myController1,
              decoration:
              InputDecoration(hintText: 'MainPage에 첫 번째로 띄울 내용을 입력하세요.'),
            ),
            TextField(
              controller: myController2,
              decoration:
              InputDecoration(hintText: 'MainPage에 두 번째로 띄울 내용을 입력하세요.'),
            ),
            RaisedButton(
              child: Text("Go MainPage"),
              onPressed: () {
                list.add(myController1.text);
                list.add(myController2.text);
                Navigator.pop(context, list);
              },
            ),
            Divider(),
            Text('MainPage에서 보낸 내용'),
            Text(widget.Message),
            Text((widget.Num).toString()),
          ],
        ),
      ),
    );
  }
}