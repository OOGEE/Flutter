import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row - Column")
      ),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Text("Row Text 1"),
                    color: Colors.black12,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      child: Text("Row Text 2"),
                      color: Colors.black26
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      child: Text("Row Text 3"),
                      color: Colors.black38
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Column Text 1"),
                  color: Colors.black12,
                ),
                Divider(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(20.0),
                  child: Text("Column Text 2"),
                  color: Colors.black26,
                ),
                Divider(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: Text("Column Text 3"),
                  color: Colors.black38,
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}