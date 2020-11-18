import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class SendPage extends StatefulWidget {
  final BluetoothDevice device;

  const SendPage({this.device});

  @override
  Send createState() => new Send();
}

class Send extends State<SendPage> {
  BluetoothConnection connection;
  bool isConnecting = true;
  bool get isConnected => connection != null && connection.isConnected;
  bool isDisconnecting = false;

  final TextEditingController textEditingController =
      new TextEditingController();

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
      body: Column(
        children: [
          TextField(
            controller: textEditingController,
            enabled: isConnected,
          ),
          RaisedButton(
            child: Text("Send"),
            onPressed: isConnected
                ? () => _sendMessage(textEditingController.text)
                : null,
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text) async {
    text = text.trim();
    connection.output.add(utf8.encode(text + "\n"));
    await connection.output.allSent;
  }
}
