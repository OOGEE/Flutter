import 'package:flutter/material.dart';

import 'package:flutter_page_route_multi/SecondPage.dart';
import 'package:flutter_page_route_multi/ThirdPage.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: RaisedButton(
                child: Text('Go SecondPage'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }));
                },
              ),
            ),
            Expanded(
              child: RaisedButton(
                child: Text('Go ThirdPage'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThirdPage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
