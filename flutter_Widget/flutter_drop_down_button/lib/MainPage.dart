import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  String ButtonValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownButton"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: ButtonValue,
          onChanged: (String newValue) {
            setState(() {
              ButtonValue = newValue;
            });
          },
          items: [
            '첫 번째',
            '두 번째',
            '세 번째',
            '네 번째',
          ].map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
          hint: Text('선택하세요')
        ),
      ),
    );
  }
}