import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class SendPage extends StatefulWidget {
  final BluetoothDevice device;

  const SendPage({this.device});

  @override
  Send createState() => new Send();
}

class Send extends State<SendPage> {
  final Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connect Page"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bluetooth_connected),
            onPressed: () => widget.device.connect(),
          ),
          IconButton(
            icon: Icon(Icons.bluetooth_disabled),
            onPressed: () => widget.device.disconnect(),
          ),
        ],
      ),
      body: Center(
        child: StreamBuilder<BluetoothDeviceState>(
          stream: widget.device.state,
          initialData: BluetoothDeviceState.connecting,
          builder: (c, snapshot) {
            if(snapshot.data == BluetoothDeviceState.connected) {
              return ListView(
                children: [
                  Text("Connected", style: TextStyle(fontSize: 30),),
                  TextField(
                    controller: Controller,
                  ),
                  RaisedButton(
                    child: Text("Send"),
                    onPressed: () => _sendMessage(Controller.text),
                  ),
                ],
              );
            }
            else {
              return Text("");
            }
          },
        ),
      ),
    );
  }

  void _sendMessage(String text) async {
    List<BluetoothService> services = await widget.device.discoverServices();
    services.forEach(
          (service) async {
        var characteristics = service.characteristics;
        for (BluetoothCharacteristic c in characteristics) {
          await c.write(utf8.encode(text + "\r\n"));
        }
      },
    );
  }
}