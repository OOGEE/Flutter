# classic_bluetooth_connect

- 클래식 블루투스와 연결을 할 수 있는 예제입니다.
- 클래식 블루투스는 IOS 환경에서 사용할 수 없습니다.
- 본 예제에서는 안드로이드 환경 스마트폰과 아두이노, HC-06 모듈을 사용했습니다.
- "flutter_bluetooth_serial" 패키지를 사용했습니다.
- flutter_bluetooth_serial 패키지의 예제를 기반으로 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

메인 화면 | 기기 선택 | 연결 중 |  연결 완료 |
:---:|:---:|:---:|:---:|
![](https://user-images.githubusercontent.com/46275549/98882453-a4675e00-24cf-11eb-850f-64411dd95b42.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/98882455-a4fff480-24cf-11eb-9cd1-1cf9966d97ec.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/98882457-a4fff480-24cf-11eb-9192-58c6023560de.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/98882452-a3363100-24cf-11eb-9af4-8f4185b15f96.jpg)

---------------------

## pubspec.yaml
~~~dart
flutter_bluetooth_serial: ^0.2.2
~~~
- flutter_bluetooth_serial 패키지 사용

## build.gradle
~~~dart
minSdkVersion 18
~~~
- classic_bluetooth_connect/android/app/build.gradle 파일에서 minSdkVersion을 16에서 18로 변경
- 패키지가 요구하는 기본 사항이기 때문에 꼭 변경해줘야 함

## MainPage
~~~dart
@override
void initState() {
    ...
}
~~~
- 페이지가 켜질 때 내부의 내용이 실행 됨
- 블루투스를 본격적으로 사용하기 전에 기본적인 세팅을 진행함

~~~dart
@override
void dispose() {
    ...
}
~~~
- 페이지가 폐기 될 때 내부의 내용이 실행 됨
- 페이지가 폐기 될 때 세팅 값을 초기화 해 줌

~~~dart
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
          return CheckPage(device: selectedDevice);
        },
      ),
    );
  } else {
    print('Connect -> no device selected');
  }
},
~~~
- 버튼을 누르면 SelectBondedDevicePage로 이동해 원하는 블루투스 기기를 선택하게 되며 거기서 선택한 기기의 값을 selectedDevice 라는 변수에 저장함
- 선택 된 기기가 있다면 CheckPage를 띄우며 selectedDevice 변수를 넘김

## SelectBondedDevicePage, BluetoothDeviceListEntry

- SelectBondedDevicePage를 통해 디바이스를 고를 수 있는 페이지를 띄우며, 관련된 설정을 진행
- BluetoothDeviceListEntry를 통해 SelectBondedDevicePage에 디바이스의 리스트를 띄워 줌
- 기존 예제의 파일을 가져온 것이기 때문에 자세한 설명은 생략

## CheckPage
~~~dart
BluetoothConnection connection;
bool isConnecting = true;
bool get isConnected => connection != null && connection.isConnected;
bool isDisconnecting = false;
~~~
- 연결 상태에 관한 변수들을 선언 및 지정

~~~dart
void initState() {
    ...
}
~~~
- 페이지가 켜질 때 내부의 내용이 실행 됨
- 디바이스 기기와 연결을 시도함

~~~dart
void dispose() {
    ...
}
~~~
- 페이지가 폐기 될 때 내부의 내용이 실행 됨
- 블루투스 기기와의 연결을 끊음

~~~dart
child: isConnecting
  ? Text('Connecting to ' + widget.device.name + '...')
  : isConnected
    ? Text('Live with ' + widget.device.name)
    : Text('log with ' + widget.device.name)),
~~~
- 연결 중이라면 "Connection to '디바이스 이름' ..."으로 텍스트 출력
- 연결이 됐으면 "Live with '디바이스 이름'"으로 텍스트 출력
- 연결이 되지 않았으면 "log with '디바이스 이름"으로 텍스트 출력
- 텍스트 내용에 따라 연결 상태 확인 가능