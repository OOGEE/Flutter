# classic_bluetooth_receive

- 클래식 블루투스와 연결 및 데이터를 수신할 수 있는 예제입니다.
- 본 예제는 수신에 관한 내용만을 다룬 것으로 연결에 관한 내용은 [classic_bluetooth_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_connect)를 통해 확인할 수 있습니다.
- [classic_bluetooth_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_connect)에서 설명한 내용은 생략했습니다.

연결 중 | 연결 완료 | 데이터 수신 |
:---:|:---:|:---:|
![](https://user-images.githubusercontent.com/46275549/99628953-8626d280-2a7a-11eb-8f85-21e771636b82.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/99628955-86bf6900-2a7a-11eb-86d4-661baaf73df7.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/99628957-86bf6900-2a7a-11eb-9a59-937944f4accc.jpg)

아두이노 화면 |
:---:|
![](https://user-images.githubusercontent.com/46275549/99628949-84f5a580-2a7a-11eb-86c4-1666723778ec.png)

## initState
~~~dart
connection.input.listen(_onDataReceived).onDone(() {
  if (isDisconnecting) {
    print('Disconnecting locally!');
  } else {
    print('Disconnected remotely!');
  }
  if (this.mounted) {
    setState(() {});
  }
}
~~~
- 기존의 classic_bluetooth_connect의 initState에 추가된 내용
- 데이터의 입력을 대기하고 있다가 입력받는 순간 _onDataRecived 실행

## _onDataReceived
~~~dart
String buffer = "";
String showText = "";
~~~
- buffer는 받아온 데이터들을 저장하는 변수
- showText는 실직적으로 사용자에게 보여주기 위한 변수

~~~dart
void _onDataReceived(Uint8List data) {
  int index = data.indexOf(13);
  String dataString = String.fromCharCodes(data);

  if(index == -1) {
    buffer = buffer + dataString;
  }
  else {
    showText = buffer + dataString;
    showText = showText.trim();
    setState(() {});
    buffer = "";
  }
}
~~~

- index 값은 개행 문자(Carriage Return)이 있는지 없는지 판별하기 위한 변수
     > 개행 문자를 판별하는 이유는 데이터가 한 번에 다 들어오는 것이 아닌 나눠져서 들어올 때도 있기 때문
- dataString은 받아온 data를 String으로 변환해 저장하는 변수
- 만약 data에 개행 문자(Carriage Return)이 없다면 buffer에 dataString의 내용들을 저장
- 만약 data에 개행 문자(Carriage Return)이 있다면 buffer의 내용들과 dataString의 내용을 합해 저장
- showText.trim()을 사용해 showText의 앞과 뒤에 탭, 줄바꿈 등을 삭제
- setState하여 현재 화면 상태를 변경해 준 뒤 buffer의 내용을 비워 줌
