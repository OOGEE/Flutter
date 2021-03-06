# flutter_BlueTooth

- 클래식 블루투스와 BLE를 다룰 수 내용을 모아놓은 것입니다.

-----------------------

## [classic_bluetooth_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_connect)

- 클래식 블루투스와 연결을 할 수 있는 예제입니다.
- 클래식 블루투스는 IOS 환경에서 사용할 수 없습니다.
- 본 예제에서는 안드로이드 환경 스마트폰과 아두이노, HC-06 모듈을 사용했습니다.
- "flutter_bluetooth_serial" 패키지를 사용했습니다.
- flutter_bluetooth_serial 패키지의 예제를 기반으로 제작했습니다.
- 패키지 적용 방법은 flutter_Package를 통해 확인할 수 있습니다.

## [classic_bluetooth_receive](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_receive)

- 클래식 블루투스와 연결 및 데이터를 송신할 수 있는 예제입니다.
- 본 예제는 전송에 관한 내용만을 다룬 것으로 연결에 관한 내용은 classic_bluetooth_connect를 통해 확인할 수 있습니다.
- classic_bluetooth_connect에서 설명한 내용은 생략했습니다.

## [classic_bluetooth_send](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_send)

- 클래식 블루투스와 연결 및 데이터를 수신할 수 있는 예제입니다.
- 본 예제는 수신에 관한 내용만을 다룬 것으로 연결에 관한 내용은 classic_bluetooth_connect를 통해 확인할 수 있습니다.
- classic_bluetooth_connect에서 설명한 내용은 생략했습니다.

## [flutter_ble_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_connect)

- BLE와 연결을 할 수 있는 예제입니다.
- 본 예제에서는 안드로이드 환경 스마트폰과 아두이노 우노, HM-10 모듈을 사용했습니다.
- "flutter_blue" 패키지를 사용했습니다.
- flutter_blue 패키지의 예제를 인용해 제작했습니다.
- 패키지 적용 방법은 flutter_Package를 통해 확인할 수 있습니다.

## [flutter_ble_receive](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_receive)

- BLE와 연결 및 데이터를 수신할 수 있는 예제입니다.
- 본 예제는 수신에 관한 내용만을 다룬 것으로 연결에 관한 내용은 flutter_ble_connect를 통해 확인할 수 있으며, 기타 설정과 문제점, 사용 모듈에 관한 내용이 들어가있기 때문에 먼저 보고 오시는걸 권장드립니다.
- flutter_ble_connect에서 설명한 내용은 생략했습니다.
- 이유는 밝혀내지 못했으나, 18글자가 넘어가면 데이터가 정상적으로 넘어오지 않습니다.
- flutter_blue 패키지의 예제를 인용해 제작했습니다.

## [flutter_ble_send](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/flutter_ble_send)

- BLE와 연결 및 데이터를 송신할 수 있는 예제입니다.
- 본 예제는 전송에 관한 내용만을 다룬 것으로 연결에 관한 내용은 flutter_ble_connect를 통해 확인할 수 있으며, 기타 설정과 문제점, 사용 모듈에 관한 내용이 들어가있기 때문에 먼저 보고 오시는걸 권장드립니다.
- flutter_ble_connect에서 설명한 내용은 생략했습니다.