import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  double slider_value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slider')
      ),
      body: Center(
        child: Slider(
          min: 0,
          max: 100,
          divisions: 10,
          value: slider_value,
          label: "$slider_value",
          onChanged: (value) {
            setState(() {
              slider_value = value;
            });
          },
        ),
      ),
    );
  }
}