# flutter_snackbar

- snackbar는 하단의 작은 팝업으로 사용자에게 무언가 확인시켜 줄 때 띄우는 데 사용하는 위젯입니다.
- snackbar의 '닫기'를 누르거나 일정 시간이 지날 시 사라집니다.

![Screen_Recording_20201106-091700_One UI Home_1](https://user-images.githubusercontent.com/46275549/98310689-f5c7a700-2010-11eb-8c99-1395b93bef66.gif)

## scaffoldKey
~~~dart
final scaffoldKey = GlobalKey<ScaffoldState>();
~~~
- Scaffold를 참조하는 Key를 선언

~~~dart
key: scaffoldKey,
~~~
- 현재 사용한 Scaffold의 key 값을 기존에 선언해 뒀떤 scaffoldKey에 저장

## SnackBar
~~~dartfinal snackBar = SnackBar(
  backgroundColor: Colors.blue,
  behavior: SnackBarBehavior.floating,
  content: Text("버튼이 눌렸습니다."),
  duration: Duration(seconds: 3),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  action: SnackBarAction(
    label: '닫기',
    textColor: Colors.white,
    onPressed: () {},
  ),
);
scaffoldKey.currentState.showSnackBar(snackBar);
~~~
- snackBar를 선언
- backgroundColor를 통해 snackBar의 배경 색을 지정
- background를 지정하지 않을 시 기본은 검정
- behavior를 통해 snackBar의 디자인 변경(fixed는 바닥과 좌우에 딱 붙어있으며 입체감이 없음 / floating은 좌우와 바닥에 여유가 조금 있으며 입체감이 있음)
- behavior를 지정하지 않을 시 기본은 fixed
- content를 통해 띄울 내용 선언
- duration을 통해 snackBar가 띄워질 시간 지정(시간이 지나면 자동으로 snackBar가 사라짐)
- duration을 지정하지 않을 시 기본은 4초
- shape를 통해 snackBar의 테두리를 둥글게 만듬
- action을 통해 우측에 띄울 버튼 생성(label로 버튼의 글씨, textColor로 label의 색을 지정 가능)
- scaffoldKey.currentState.showSnackBar(snackBar)로 scaffoldKey에 해당하는 Scaffold의 현재 상태에 선언한 스낵바를 띄워줌