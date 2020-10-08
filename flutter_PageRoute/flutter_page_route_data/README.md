# flutter_page_route_data

- MainPage 및 SecondPage에서 TextField를 사용해 원하는 텍스트를 입력할 수 있습니다.
- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워지며, TextField에 입력했던 텍스트를 볼 수 있습니다.
- SecondPage에서 'Go MainPage' 버튼을 누르면 MainPage로 돌아가며, TextField에 입력했던 텍스트를 볼 수 있습니다.

![Screen_Recording_20201006-104007_One UI Home_1](https://user-images.githubusercontent.com/46275549/95149285-7e5be900-07c0-11eb-9721-ddaad1f2a7f9.gif)

## MainPage
### TextField
~~~dart
final myController = TextEditingController(); // TextField에 입력한 데이터를 다루기 위한 변수
~~~

~~~dart
TextField(
  controller: myController, // 입력한 텍스트를 myController에 저장
  decoration: InputDecoration(hintText: 'SecondPage에 띄울 내용을 입력하세요.'), // 아무것도 입력하지 않았을 때 힌트
)
~~~

### updateData
~~~dart
void updateData(String information) { // SecondPage에서 보낸 데이터를 적용시키는 함수
  setState(() { // 화면에 함수 내부의 내용을 갱신하고 다시 그리기
    Message = information;
    show = 'SecondPage에서 보낸 내용';
  });
}
~~~

### onPressed
~~~dart
onPressed: () async {
  final information = await Navigator.push(
    context, MaterialPageRoute(builder: (context) {return SecondPage(Message : myController.text);})
    // Message란 이름으로 myController를 보냄, String으로 보낼꺼기 때문에 .text를 추가
  );
  updateData(information); // pop으로 받아온 내용을 updateData 함수를 사용해 갱신
},
~~~
- async와 await을 사용해 push한 뒤 pop 할 때까지 대기
- 자료형과 갯수는 자유롭게 늘리거나 줄일 수 있음
- SecondPage와 변수명 통일해야함

### Divider
- 내용을 잘 구분하기 위한 가로 선 삽입

------

## SecondPage
### 받아온 값 사용
~~~dart
class SecondPage extends StatefulWidget {
  final String Message; // Message를 받아오기 위한 구문

  const SecondPage({this.Message}); // Message를 받아오기 위한 구문

  @override
  Second createState() => new Second();
}
~~~
- widget.변수명 : 이를 사용하면 받아온 변수 값을 직접 사용할 수 있음

### pop
~~~dart
Navigator.pop(context, myController.text); // myController.text의 내용을 pop하며 리턴
~~~
- 리턴할 수 있는 변수는 무조건 String이며 1개만 가능(여러개를 사용하고 싶으면 List 사용)
