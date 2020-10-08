# flutter_page_route_back_data

- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워집니다.
- SecondPage에서 첫 번째 데이터 선택인 'a', 'b', 'c' 버튼 중 하나를 누르면 이를 화면에 출력합니다.
- SecondPage에서 두 번째 데이터 선택인 '1', '2', '3' 버튼 중 하나를 누르면 이를 화면에 출력합니다.
- 상단 좌측의 앱바에 뒤로가기 버튼이나 스마트폰 자체의 뒤로가기 버튼을 누르면 MainPage로 돌아가며, 선택했던 데이터가 출력되는 것을 볼 수 있습니다.
- 기존의 [flutter_PageRoute_Data_Plus](https://github.com/OOGEE/flutter_PageRoute_Data_Plus)를 기반으로 제작했기 때문에 수정 및 추가한 내용만 설명했습니다.

![Screen_Recording_20201007-105843_One UI Home_1](https://user-images.githubusercontent.com/46275549/95278965-66ea3200-088c-11eb-8342-6b3bd3eb03db.gif)

## OnBackPressed, WillPopScope
~~~dart
Future<bool> OnBackPressed() {
  ...
}
~~~

~~~dart
WillPopScope(
  child: Text(''),
  onWillPop: OnBackPressed,
),
~~~
- WillPopScope는 스마트폰 자체의 뒤로가기 버튼
- onWillPop은 뒤로가기 버튼을 눌렀을 때 실행되는 기능
- onWillPop은 매개변수로 Future\<bool>을 기대함(OnBackPressed를 'Future\<bool>'형으로 지정한 이유)

## leading
~~~dart
leading: new IconButton(
  icon: new Icon(Icons.arrow_back),
  onPressed: () {
    list.add(FirstData);
    list.add(SecondData);
    Navigator.pop(context, list);
  },
),
~~~
- leading은 AppBar의 좌측 상단
- IconButton으로 icon을 클릭할 수 있는 버튼 생성
- 기본 아이콘인 arrow_back 사용
