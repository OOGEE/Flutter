import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class ReceivePage extends StatefulWidget {
  final BluetoothDevice device;

  const ReceivePage({this.device});

  @override
  Receive createState() => new Receive();
}

class Receive extends State<ReceivePage> {
  final Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receive Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.bluetooth),
            onPressed: () => widget.device.discoverServices(),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: StreamBuilder<List<BluetoothService>>(
              stream: widget.device.services,
              initialData: [],
              builder: (c, snapshot) {
                return Row(
                  children: _buildReceiveData(snapshot.data),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildReceiveData(List<BluetoothService> services) {
    return services
        .map(
          (s) => ServiceTile(
            service: s,
            characteristicTiles: s.characteristics
                .map(
                  (c) => CharacteristicTile(
                    characteristic: c,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }
}

class ServiceTile extends StatelessWidget {
  final BluetoothService service;
  final List<CharacteristicTile> characteristicTiles;

  const ServiceTile({Key key, this.service, this.characteristicTiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (characteristicTiles.length == 1) {
      return Column(
        children: characteristicTiles,
      );
    } else {
      return Column(
        children: [],
      );
    }
  }
}

class CharacteristicTile extends StatelessWidget {
  final BluetoothCharacteristic characteristic;

  const CharacteristicTile({
    Key key,
    this.characteristic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: characteristic.value,
      initialData: characteristic.lastValue,
      builder: (c, snapshot) {
        characteristic.setNotifyValue(true);
        String text = "";
        final value = snapshot.data;
        text = new String.fromCharCodes(value).replaceAll("\n", "");
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 30),
            ),
          ],
        );
      },
    );
  }
}
