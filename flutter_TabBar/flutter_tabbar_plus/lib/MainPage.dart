import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  TabController controller;
  final TextController = TextEditingController();
  String TextString = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Row'),
              Tab(text: 'Column'),
              Tab(text: 'ListView'),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text("버튼 1"),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Text("버튼 2"),
                      color: Colors.green,
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Text("버튼 3"),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    controller: TextController,
                  ),
                  RaisedButton(
                    child: Text("버튼"),
                    onPressed: () {
                      setState(() {
                        TextString = TextController.text;
                      });
                    },
                  ),
                  Text(TextString),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: [
                  Container(
                    height: 300,
                    child: RaisedButton(
                      child: Text("버튼 1"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 300,
                    child: RaisedButton(
                      child: Text("버튼 2"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 300,
                    child: RaisedButton(
                      child: Text("버튼 3"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 300,
                    child: RaisedButton(
                      child: Text("버튼 4"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 300,
                    child: RaisedButton(
                      child: Text("버튼 5"),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 300,
                    child: RaisedButton(
                      child: Text("버튼 6"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
