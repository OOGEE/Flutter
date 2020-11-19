import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class SecondPage extends StatefulWidget {
  final BluetoothDevice device;

  const SecondPage({this.device});

  @override
  Second createState() => new Second();
}

class Second extends State<SecondPage> {
  BluetoothConnection connection;
  bool isConnecting = true;
  bool get isConnected => connection != null && connection.isConnected;
  bool isDisconnecting = false;

  String buffer = "";
  String showText = "";

  @override
  void initState() {
    super.initState();

    BluetoothConnection.toAddress(widget.device.address).then((_connection) {
      print('Connected to the device');
      connection = _connection;
      setState(() {
        isConnecting = false;
        isDisconnecting = false;
      });
      connection.input.listen(_onDataReceived).onDone(() {
        if (isDisconnecting) {
          print('Disconnecting locally!');
        } else {
          print('Disconnected remotely!');
        }
        if (this.mounted) {
          setState(() {});
        }
      });
    }).catchError((error) {
      print('Cannot connect, exception occured');
      print(error);
    });
  }

  @override
  void dispose() {
    // Avoid memory leak (`setState` after dispose) and disconnect
    if (isConnected) {
      isDisconnecting = true;
      connection.dispose();
      connection = null;
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: isConnecting
              ? Text('Connecting to ' + widget.device.name + '...')
              : isConnected
              ? Text('Live with ' + widget.device.name)
              : Text('log with ' + widget.device.name)),
      body: Center(
        child: Text(showText),
      ),
    );
  }

  void _onDataReceived(Uint8List data) {
    int index = data.indexOf(13);
    String dataString = String.fromCharCodes(data);

    if(index == -1) {
      buffer = buffer + dataString;
    }
    else {
      showText = buffer + dataString;
      showText = showText.trim();
      setState(() {});
      buffer = "";
    }
  }
}