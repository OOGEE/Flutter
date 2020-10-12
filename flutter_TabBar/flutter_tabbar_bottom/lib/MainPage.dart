import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  int Index = 0;
  List<Widget> _widgets = <Widget> [
    Text('First Page'),
    Text('Second Page'),
    Text('Third Page'),
  ];

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
            icon: Icon(Icons.filter_1),
            title: Text('first'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('second'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            title: Text('third'),
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
