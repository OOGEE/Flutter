import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

class MainPage extends StatefulWidget{
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Picker"),
      ),
      body: Center(
        child: NumberPicker.integer(
          initialValue: value,
          minValue: 0,
          maxValue: 100,
          step: 5,
          infiniteLoop: true,
          zeroPad: true,
          onChanged: (val) {
            setState(() {
              value = val;
            });
          },
        ),
      ),
    );
  }
}