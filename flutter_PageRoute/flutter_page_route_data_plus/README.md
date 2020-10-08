# flutter_page_route_data_plus

- MainPage 및 SecondPage에서 TextField를 사용해 원하는 텍스트를 입력할 수 있습니다.
- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워지며, TextField에 입력했던 텍스트를 볼 수 있습니다.
- SecondPage에서 'Go MainPage' 버튼을 누르면 MainPage로 돌아가며, TextField에 입력했던 텍스트를 볼 수 있습니다.
- 기존의 [flutter_PageRoute_Data](https://github.com/OOGEE/flutter_PageRoute_Data)에서 여러개의 TextField의 데이터를 페이지 간 교환하는 기능을 추가 구현했습니다.
- 숫자 입력란의 경우 정수를 입력하지 않을 시 에러가 납니다.

* flutter_PageRoute_Data에서 추가된 기능만 설명했습니다.

![Screen_Recording_20201006-113711_One UI Home_1](https://user-images.githubusercontent.com/46275549/95152791-d8f94300-07c8-11eb-84bc-ad6161286c86.gif)
![Screen_Recording_20201006-113901_One UI Home_1](https://user-images.githubusercontent.com/46275549/95152801-dd256080-07c8-11eb-8efc-3fc6ecc2cc0d.gif)  

## MainPage
### List
~~~dart
void updateData(List<String> information) {
  setState(() {
    Message1 = information[0]; // inforamtion 배열의 첫 번째 데이터를 변수에 저장
    Message2 = information[1]; // inforamtion 배열의 두 번째 데이터를 변수에 저장
    show = 'SecondPage에서 보낸 내용';
  });
}
~~~

### push 데이터 여러개 전송
~~~dart
final information = await Navigator.push(
                    context, MaterialPageRoute(builder: (context) {return SecondPage(Message : myController1.text, Num : int.parse(myController2.text));})
);
~~~
- 위의 코드와 같이 다양한 자료형을 가진 여러개의 데이터를 push하는 동시에 띄울 페이지에 보낼 수 있음

------------

## SecondPage
### 받아온 값 사용
~~~dart
class SecondPage extends StatefulWidget {
  final String Message;
  final int Num;

  const SecondPage({this.Message, this.Num});

  @override
  Second createState() => new Second();
}
~~~
- 값을 받아올 때는 자료형을 통일해야하며, 받아올 값들을 선언해줘야함

### pop 데이터 여러개 전송
~~~dart
List<String> list = new List<String>(); // String 배열 선언
~~~

~~~dart
list.add(myController1.text); // myController1의 내용을 list에 추가
list.add(myController2.text); // myController2의 내용을 list에 추가
Navigator.pop(context, list); // list를 pop하며 리턴
~~~

- pop을 할 때 리턴할 수 있는 변수는 무조건 String형이며 push와 달리 여러개를 입력하지 못함
- 이를 해결하기 위해 String 배열을 리턴

### 변수명.toString()
- 문자열 변수가 아닌 값들을 문자열 변수로 변경해주는 함수
