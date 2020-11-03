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
        title: Text(
          'AppBar',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Colors.amberAccent,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.amberAccent,
              ),
              onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.black,
              ),
              onPressed: () {},
          ),
        ],
      ),
    );
  }
}
