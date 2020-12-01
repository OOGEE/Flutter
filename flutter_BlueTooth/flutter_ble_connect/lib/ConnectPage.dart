import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class ConnectPage extends StatefulWidget {
  final BluetoothDevice device;

  const ConnectPage({this.device});

  @override
  Connect createState() => new Connect();
}

class Connect extends State<ConnectPage> {
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
              return Text("Connected", style: TextStyle(fontSize: 30),);
            }
            else {
              return Text("");
            }
          },
        ),
      ),
    );
  }
}