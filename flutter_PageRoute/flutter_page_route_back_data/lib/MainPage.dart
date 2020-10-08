import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_page_route_back_data/SecondPage.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  String show = '', Message1 = '', Message2 = '';

  void updateData(List<String> information) {
    setState(() {
      show = 'SecondPage에서 보낸 내용';
      Message1 = information[0];
      Message2 = information[1];
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
            RaisedButton(
              child: Text("Go SecondPage"),
              onPressed: () async {
                final information = await Navigator.push(
                    context, MaterialPageRoute(builder: (context) {return SecondPage();})
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