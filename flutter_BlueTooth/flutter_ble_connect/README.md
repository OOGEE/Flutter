# flutter_ble_connect

- BLE와 연결을 할 수 있는 예제입니다.
- 본 예제에서는 안드로이드 환경 스마트폰과 아두이노 우노, HM-10 모듈을 사용했습니다.
- "flutter_blue" 패키지를 사용했습니다.
- flutter_blue 패키지의 예제를 인용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

## pubspec.yaml
~~~dart
flutter_blue: ^0.7.3
~~~
- flutter_blue 패키지 사용

## build.gradle
~~~dart
minSdkVersion 19
~~~
- flutter_ble_connect/android/app/build.gradle 파일에서 minSdkVersion을 16에서 19로 변경
- 패키지가 요구하는 기본 사항이기 때문에 꼭 변경해줘야 함

## AndroidManifest.xml
~~~dart
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
~~~
- flutter_ble_connect/android/app/main/AndroidManifest.xml 파일에서 <application 윗부분에 추가
- 안드로이드 스마트폰 환경에서 블루투스 사용 권한을 얻어내기 위해 필요

## info.plist
~~~dart
<key>NSBluetoothAlwaysUsageDescription</key>
<string>Need BLE permission</string>
<key>NSBluetoothPeripheralUsageDescription</key>
<string>Need BLE permission</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Need Location permission</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>Need Location permission</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>Need Location permission</string>
~~~
- flutter_ble_connect/ios/Runner/info.plist 파일에 <dict> 밑에 추가
- IOS 스마트폰 환경에서 블루투스 사용 권한을 얻어내기 위해 필요

## StreamBuilder

- 데이터를 감시하고 있다가 그에 맞춰 적절한 처리를 할 수 있게 하며, setState를 쓰지 않고도 위젯 업데이트가 가능
- 위 기능이 많이 사용되므로 보다 정확한 이해를 위해서는 구글링을 통해 관련 내용을 학습하는 것이 앞으로 나올 설명을 이해하는데 도움

## MainPage
~~~dart
StreamBuilder<BluetoothState>(
  stream: FlutterBlue.instance.state,
  initialData: BluetoothState.unknown,
  builder: (c, snapshot) {
    final state = snapshot.data;
    if (state == BluetoothState.on) {
      return FindDevicesScreen();
    }
    return BluetoothOffScreen();
  }
),
~~~
- 현재 블루투스의 상태를 감시하고, 시작 상태를 unknown(모름)으로 지정
- 만약 블루투스 상태가 On이라면 FindDevicesScreen을 띄우고, 아니라면 BluetoothOffScreen을 띄움

## FindDevicesScreen

- 기존 패키지의 예제를 가져와 사용했기 때문에 간단한 설명 위주로 제공
- 우측 하단의 floatingActionButton을 누르면 블루투스를 검색하며, 일정 시간이 지나거나, 버튼을 한 번 더 누를 시 검색 중지
- 연결할 수 있는 블루투스 기기들을 검색한 뒤 함수로 위젯을 생성해 ScrollView 내부에 삽입해 보여줌
- 각각 타일의 오른쪽에 'OPEN' 혹은 'CONNECT' 버튼을 누를 시 ConnectPage를 띄우며 device 값을 넘김

## ConnectPage
~~~dart
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
~~~
- AppBar 우측에 아이콘 버튼 2개 생성
- 모듈과 연결, 해제를 버튼으로 제어

~~~dart
StreamBuilder<BluetoothDeviceState>(
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
~~~
- StreamBuilder를 사용해 현재 모듈과의 연결 상태 데이터를 감시, 시작 상태는 연결 중 상태
- 만약 연결이 되었다면 화면에 "Connected"를 띄우고, 아니라면 아무것도 띄우지 않음