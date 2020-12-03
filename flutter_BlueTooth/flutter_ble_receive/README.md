# flutter_ble_receive

- BLE와 연결 및 데이터를 수신할 수 있는 예제입니다.
- 본 예제는 수신에 관한 내용만을 다룬 것으로 연결에 관한 내용은 [flutter_ble_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_connect)를 통해 확인할 수 있으며, 기타 설정과 문제점, 사용 모듈에 관한 내용이 들어가있기 때문에 먼저 보고 오시는걸 권장드립니다.
- [flutter_ble_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_connect)에서 설명한 내용은 생략했습니다.
- 이유는 밝혀내지 못했으나, 18글자가 넘어가면 데이터가 정상적으로 넘어오지 않습니다.
- flutter_blue 패키지의 예제를 인용해 제작했습니다.

데이터 수신 전 | 데이터 수신 후 | 아두이노 시리얼 창 |
:---:|:---:|:---:|
![1](https://user-images.githubusercontent.com/46275549/100974358-7c739380-357f-11eb-94d6-928b636a3027.jpg) | ![2](https://user-images.githubusercontent.com/46275549/100974362-7da4c080-357f-11eb-93fa-bb57a0171b32.jpg) | ![3](https://user-images.githubusercontent.com/46275549/100974364-7da4c080-357f-11eb-81c1-d9000d25c211.png)

## ReceivePage
~~~dart
actions: [
  IconButton(
    icon: Icon(Icons.bluetooth),
    onPressed: () => widget.device.discoverServices(),
  ),
],
~~~
- 앱바 우측에 버튼을 눌러 블루투스 데이터를 수신하기 위한 모드를 켬

~~~dart
StreamBuilder<List<BluetoothService>>(
  stream: widget.device.services,
  initialData: [],
  builder: (c, snapshot) {
    return Row(
      children: _buildReceiveData(snapshot.data),
    );
  },
),
~~~
- StreamBuilder를 사용해 받아온 데이터를 최신화
- 내부에 들어가는 위젯은 _buildReceiveData 함수를 사용해 생성

~~~dart
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
~~~
- 받아온 snapshot.data를 services라는 이름으로 사용
- ServiceTile과 CharacteristicTile을 사용

~~~dart
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
~~~
- 유효한 블루투스를 찾아 화면에 띄울 수 있게 함

~~~dart
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
~~~
- StreamBuilder를 사용해 내용이 변할 때마다 최신화
- 받아온 내용을 추출해 Text 위젯으로 띄움