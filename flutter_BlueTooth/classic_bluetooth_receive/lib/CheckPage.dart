import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class CheckPage extends StatefulWidget {
  final BluetoothDevice device;

  const CheckPage({this.device});

  @override
  Check createState() => new Check();
}

class Check extends State<CheckPage> {
  BluetoothConnection connection;
  bool isConnecting = true;
  bool get isConnected => connection != null && connection.isConnected;
  bool isDisconnecting = false;

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
        title: Text("Check connection"),
      ),
      body: Center(
          child: isConnecting
              ? Text('Connecting to ' + widget.device.name + '...')
              : isConnected
                  ? Text('Live with ' + widget.device.name)
                  : Text('log with ' + widget.device.name)),
    );
  }
}
