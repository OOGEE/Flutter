import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(tabs: <Widget>[
            Tab(text: 'first'),
            Tab(text: 'second'),
            Tab(text: 'third'),
          ],),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Container(
              child: Text("First Page"),
            ),
            Container(
              child: Text("Second Page"),
            ),
            Container(
              child: Text("Third Page"),
            ),
          ],
        ),
      ),
    );
  }
}