import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_page_route_data/SecondPage.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  final myController = TextEditingController();
  String Message = '';
  String show = '';

  void updateData(String information) {
    setState(() {
      Message = information;
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
              controller: myController,
              decoration: InputDecoration(hintText: 'SecondPage에 띄울 내용을 입력하세요.'),
            ),
            RaisedButton(
              child: Text("Go SecondPage"),
              onPressed: () async {
                final information = await Navigator.push(
                  context, MaterialPageRoute(builder: (context) {return SecondPage(Message : myController.text);})
                );
                updateData(information);
              },
            ),
            Divider(),
            Text(show),
            Text(Message),
          ],
        ),
      ),
    );
  }
}