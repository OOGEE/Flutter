# classic_bluetooth_send

- 클래식 블루투스와 연결 및 데이터를 송신할 수 있는 예제입니다.
- 본 예제는 전송에 관한 내용만을 다룬 것으로 연결에 관한 내용은 [classic_bluetooth_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_connect)를 통해 확인할 수 있습니다.
- [classic_bluetooth_connect](https://github.com/OOGEE/Flutter/tree/master/flutter_BlueTooth/classic_bluetooth_connect)에서 설명한 내용은 생략했습니다.

연결 중 | 연결 완료 | 전송 |
:---:|:---:|:---:|
![](https://user-images.githubusercontent.com/46275549/99468157-4df09880-2983-11eb-8bc6-be5273088916.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/99468159-4e892f00-2983-11eb-916f-ebeee0c45835.jpg)  |  ![](https://user-images.githubusercontent.com/46275549/99468161-4e892f00-2983-11eb-8417-70a70d4b1080.jpg)

아두이노 화면 |
:---:|
![](https://user-images.githubusercontent.com/46275549/99468155-4cbf6b80-2983-11eb-99c7-d36a6de5bdd0.png)

## TextField
~~~dart
final TextEditingController textEditingController = new TextEditingController();
~~~
~~~dart
TextField(
  controller: textEditingController,
  enabled: isConnected,
),
~~~
- 보낼 내용을 입력하기 위한 TextField
- enabled를 통해 연결이 완료된 상태에서만 입력을 받게 만듬
- TextField에 관한 자세한 설명은 [flutter_text](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_text) 참조

## RaisedButton
~~~dart
RaisedButton(
  child: Text("Send"),
  onPressed: isConnected
    ? () => _sendMessage(textEditingController.text)
    : null,
),
~~~
- 전송 버튼
- 3항 연산자를 통해 연결이 완료된 상태에서만 전송을 하는 함수를 실행하게 함
- 함수에게 TextField의 내용을 전달
- RaisedButton의 자세한 설명은 [flutter_button](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_button) 참조

## send
~~~dart
import 'dart:convert'
~~~

- UTF-8 인코딩을 하기 위한 라이브러리 선언

~~~dart
void _sendMessage(String text) async {
  text = text.trim();
  connection.output.add(utf8.encode(text + "\n"));
  await connection.output.allSent;
}
~~~
- 블루투스 송신 함수
- 받아온 text의 선행 또는 후행의 공백을 제거해주는 함수인 trim
- connection.output.add(utf8.encode(text + "\n")); 를 사용해 내용 + 줄넘김을 UTF-8 인코딩 해 보냄
- await connection.output.allSent; 를 사용해 내용이 전부 보내질때까지 대기 후 다른 명령어를 실행 가능하게 함