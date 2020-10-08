import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_page_route_data_plus/SecondPage.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  String Message1 = '';
  String Message2 = '';
  String show = '';

  void updateData(List<String> information) {
    setState(() {
      Message1 = information[0];
      Message2 = information[1];
      show = 'SecondPage에서 보낸 내용';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: myController1,
              decoration: InputDecoration(hintText: 'SecondPage에 띄울 글자를 입력하세요.'),
            ),
            TextField(
              controller: myController2,
              decoration: InputDecoration(hintText: 'SecondPage에 띄울 숫자를 입력하세요.'),
            ),
            RaisedButton(
              child: Text("Go SecondPage"),
              onPressed: () async {
                final information = await Navigator.push(
                    context, MaterialPageRoute(builder: (context) {return SecondPage(Message : myController1.text, Num : int.parse(myController2.text));})
                );
                updateData(information);
              },
            ),
            Divider(),
            Text(show),
            Text(Message1),
            Text(Message2),
          ],
        ),
      ),
    );
  }
}