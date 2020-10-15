# flutter_tabbar_bottom_plus
- 하단의 공간에 TabBar를 추가해 한 페이지에 여러 페이지 중 하나를 띄울 수 있게 합니다.
- 하단의 탭바 메뉴 중 하나를 선택하며 페이지를 변경할 수 있습니다.
- 각각의 탭바에 나올 페이지의 내용을 다르게 작성할 수 있습니다.
- 기존의 [flutter_tabbar_bottom](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_TabBar/flutter_tabbar_bottom)의 레이아웃과 [flutter_tabbar_plus](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_TabBar/flutter_tabbar_plus)의 페이지 별 함수를 기반으로 제작했기 때문에 수정 및 추가한 내용만 설명했습니다.

![Screen_Recording_20201013-114831_One UI Home_1](https://user-images.githubusercontent.com/46275549/95809624-2f76fc00-0d4a-11eb-9385-b46fde55093a.gif)

## List<Widget>
~~~dart
int Index = 0;

List<Widget> _widgets = <Widget>[
  Row(
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
];

~~~
- 처음 어플을 가동했을 때 띄울 화면 정의

## body
~~~dart
body: Center(
  child: _widgets[0],
),
~~~
- 기존의 flutter_tabbar_bottom과 다르게 _widgets을 하나로 놓고 자체를 변경할거기 때문에 [0]

## _onTap
~~~dart
void _onTap(int index) {
  setState(() {
    Index = index;
    if (Index == 0) {
      _widgets = [
        Row(
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
      ];
    }
    else if (Index == 1) {
      _widgets = [
        Column(
          children: [
            TextField(
              controller: TextController,
            ),
            RaisedButton(
              child: Text("버튼"),
              onPressed: () {
                setState(() {
                  TextString = TextController.text;
                  _onTap(1);
                });
              },
            ),
            Text(TextString),
          ],
        ),
      ];
    }
    else if (Index == 2) {
      _widgets = [
        ListView(
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
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 300,
              child: RaisedButton(
                child: Text("버튼 6"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ];
    }
  });
}
~~~
- Index 값 별로 _widgets의 내용을 수정
- RaisedButton의 onPressed 내부에 자체적으로 _onTap 함수를 다시 불러서 Text 내용을 갱신할 수 있게 함