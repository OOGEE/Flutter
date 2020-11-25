import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text("Expansion"),
          children: [
            Text("Tile 1"),
            RaisedButton(
              child: Text("Tile 2"),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tile 3_1"),
                Text("Tile 3_2"),
              ],
            ),
            ExpansionTile(
              title: Text("Tile 4"),
              children: [
                Text("Tile 4_1"),
                Text("Tile 4_2"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}