import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  int num1 = 0, num2 = 0, num3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownButton"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: DropdownButton<int>(
                  value: num1,
                  onChanged: (int newInt) {
                    setState(() {
                      num1 = newInt;
                      num2 = newInt;
                      num3 = newInt;
                    });
                  },
                  items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
              ),
              Container(
                child: Text(
                  "  ~  ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: DropdownButton<int>(
                  value: num2,
                  onChanged: (int newInt) {
                    setState(() {
                      num2 = newInt;
                      num3 = newInt;
                    });
                  },
                  items: <int>[
                    for (int i = num1; i < 11; i++) i
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: DropdownButton<int>(
                  value: num2,
                  onChanged: (int newInt) {
                    setState(() {
                      num2 = newInt;
                      num3 = newInt;
                    });
                  },
                  items: <int>[
                    for (int i = num1; i < 11; i++) i
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
              ),
              Container(
                child: Text(
                  "  ~  ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: DropdownButton<int>(
                  value: num3,
                  onChanged: (int newInt) {
                    setState(() {
                      num3 = newInt;
                    });
                  },
                  items: <int>[
                    for (int i = num2; i < 11; i++) i
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}