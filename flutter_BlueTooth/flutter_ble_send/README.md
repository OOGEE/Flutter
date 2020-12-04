# flutter_ble_send

- BLE와 연결 및 데이터를 송신할 수 있는 예제입니다.
- 본 예제는 전송에 관한 내용만을 다룬 것으로 연결에 관한 내용은 [flutter_ble_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_connect)를 통해 확인할 수 있으며, 기타 설정과 문제점, 사용 모듈에 관한 내용이 들어가있기 때문에 먼저 보고 오시는걸 권장드립니다.
- [flutter_ble_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_connect)에서 설명한 내용은 생략했습니다.
- flutter_blue 패키지의 예제를 인용해 제작했습니다.

어플 화면 | 아두이노 시리얼 창 |
:---:|:---:|
<img width="700" height="600" src="https://user-images.githubusercontent.com/46275549/100812240-e73da580-347f-11eb-9880-d57b3a392fe8.jpg"/> | <img src="https://user-images.githubusercontent.com/46275549/100812244-e86ed280-347f-11eb-8fc5-ec3f2c986b76.png"/>

## SendPage
~~~dart
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
~~~
- 블루투스 연결이 되있으면 "Connected"라는 텍스트와 사용자가 입력을 할 수 있는 공간인 TextField, 전송 버튼을 생성

~~~dart
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
~~~
- 버튼을 눌렀을 때 실행되는 함수
- 블루투스로 연결된 기기에 받아온 text 데이터를 전송함