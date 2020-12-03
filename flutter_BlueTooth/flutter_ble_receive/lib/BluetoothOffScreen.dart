import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BluetoothOffScreen extends StatefulWidget {
  @override
  off createState() => new off();
}

class off extends State<BluetoothOffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Turn on Bluetooth", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}