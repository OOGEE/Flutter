# flutter_tabbar_plus

- 상단 Appbar에 TabBar를 이용해 한 페이지에 여러 페이지 중 하나를 띄울 수 있게 합니다.
- 상단의 탭바 메뉴 중 하나를 선택하거나, 좌우 슬라이드를 통해 페이지를 변경할 수 있습니다.
- 각각의 탭바에 나올 페이지의 내용을 다르게 작성할 수 있습니다.
- 기존의 flutter_tabbar_basic을 기반으로 제작했기 때문에 수정 및 추가한 내용만 설명했습니다.

![Screen_Recording_20201013-095154_1](https://user-images.githubusercontent.com/46275549/95802981-e1f29300-0d39-11eb-9f82-33dc348dcbbc.gif)

## Row
~~~dart
Container(
  child: Row(
    children: [
      Expanded(
        child: RaisedButton(
          child: Text("버튼 1"),
          color: Colors.red,
          onPressed: () {},
        ),
      ),
      Expanded(
        child: RaisedButton(
          child: Text("버튼 2"),
          color: Colors.green,
          onPressed: () {},
        ),
      ),
      Expanded(
        child: RaisedButton(
          child: Text("버튼 3"),
          color: Colors.blue,
          onPressed: () {},
        ),
      ),
    ],
  ),
),
~~~

- 가로 크기에 맞춰 버튼 3개를 동일한 크기로 제작
- 버튼 1은 빨강색, 버튼 2는 초록색, 버튼 3은 파란색으로 제작


## Column
~~~dart
Container(
  child: Column(
    children: [
      TextField(
        controller: TextController,
      ),
      RaisedButton(
        child: Text("버튼"),
        onPressed: () {
          setState(() {
            TextString = TextController.text;
          });
        },
      ),
      Text(TextString),
    ],
  ),
),
~~~

- 세로로 위젯들을 배열
- TextField에 값을 입력하고 버튼을 누르면 Text에 반영되는 기능

## ListView
~~~dart
Container(
  child: ListView(
    children: [
      Container(
        height: 300,
        child: RaisedButton(
          child: Text("버튼 1"),
          onPressed: () {},
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 300,
        child: RaisedButton(
          child: Text("버튼 2"),
          onPressed: () {},
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 300,
        child: RaisedButton(
          child: Text("버튼 3"),
          onPressed: () {},
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 300,
        child: RaisedButton(
          child: Text("버튼 4"),
          onPressed: () {},
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 300,
        child: RaisedButton(
          child: Text("버튼 5"),
          onPressed: () {},
        ),
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 300,
        child: RaisedButton(
          child: Text("버튼 6"),
          onPressed: () {},
        ),
      ),
      ),
    ],
  ),
),
~~~

- 세로로 위젯을 배열하고 위젯의 세로 길이의 합이 기기의 세로 길이를 넘을 시 스크롤을 통해 볼 수 있게 함
- Cotainer로 위젯을 감싸 margin과 height 사용
- margin은 여유 공간을 생성
- height는 세로 길이를 값으로 고정