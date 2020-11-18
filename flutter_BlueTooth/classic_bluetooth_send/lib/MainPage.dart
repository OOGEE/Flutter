import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import 'SelectBondedDevicePage.dart';
import 'SendPage.dart';

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;

  String Bluetooth_address = "~", Bluetooth_name = "~";
  Timer TimeoutTimer;
  int TimeroutInt = 0;

  @override
  void initState() {
    super.initState();

    FlutterBluetoothSerial.instance.state.then((state) {
      setState(() {
        _bluetoothState = state;
      });
    });

    Future.doWhile(() async {
      if (await FlutterBluetoothSerial.instance.isEnabled) {
        return false;
      }
      await Future.delayed(Duration(milliseconds: 0xDD));
      return true;
    }).then((_) {
      FlutterBluetoothSerial.instance.address.then((address) {
        setState(() {
          Bluetooth_address = address;
        });
      });
    });

    FlutterBluetoothSerial.instance.name.then((name) {
      setState(() {
        Bluetooth_name = name;
      });
    });

    FlutterBluetoothSerial.instance
        .onStateChanged()
        .listen((BluetoothState state) {
      setState(() {
        _bluetoothState = state;

        // Discoverable mode is disabled when Bluetooth gets disabled
        TimeoutTimer = null;
        TimeroutInt = 0;
      });
    });
  }

  @override
  void dispose() {
    FlutterBluetoothSerial.instance.setPairingRequestHandler(null);
    TimeoutTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("classic_bluetooth_connect"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Connect"),
          onPressed: () async {
            final BluetoothDevice selectedDevice =
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SelectBondedDevicePage(
                    checkAvailability: false,
                  );
                },
              ),
            );
            if (selectedDevice != null) {
              print('Connect -> selected ' + selectedDevice.address);
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SendPage(device: selectedDevice);
                  },
                ),
              );
            } else {
              print('Connect -> no device selected');
            }
          },
        ),
      ),
    );
  }
}