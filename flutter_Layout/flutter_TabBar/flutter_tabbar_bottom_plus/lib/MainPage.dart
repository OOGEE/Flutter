import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  int Index = 0;
  TabController controller;
  final TextController = TextEditingController();
  String TextString = "";

  List<Widget> _widgets = <Widget>[
    Row(
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom TabBar"),
      ),
      body: Center(
        child: _widgets[0],
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
      if (Index == 0) {
        _widgets = [
          Row(
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
        ];
      }
      else if (Index == 1) {
        _widgets = [
          Column(
            children: [
              TextField(
                controller: TextController,
              ),
              RaisedButton(
                child: Text("버튼"),
                onPressed: () {
                  setState(() {
                    TextString = TextController.text;
                    _onTap(1);
                  });
                },
              ),
              Text(TextString),
            ],
          ),
        ];
      }
      else if (Index == 2) {
        _widgets = [
          ListView(
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
        ];
      }
    });
  }
}
