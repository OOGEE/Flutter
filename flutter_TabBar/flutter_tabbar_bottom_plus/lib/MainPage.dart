import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './Row_Page.dart';
import './Column_Page.dart';
import './ListView_Page.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  int Index = 0;
  TabController controller;
  final TextController = TextEditingController();
  String TextString = "";

  List<Widget> _widgets = <Widget> [Row_Page(), Column_Page(), ListView_Page()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom TabBar"),
      ),
      body: Center(
        child: _widgets.elementAt(Index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_column),
            title: Text('Row'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            title: Text('Column'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text('ListView'),
          ),
        ],
        currentIndex: Index,
        selectedItemColor: Colors.orange,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      Index = index;
    });
  }
}
