# flutter_tabbar_bottom

- 하단의 공간에 TabBar를 추가해 한 페이지에 여러 페이지 중 하나를 띄울 수 있게 합니다.
- 하단의 탭바 메뉴 중 하나를 선택하며 페이지를 변경할 수 있습니다.
- 각각의 탭바에 나올 페이지의 내용을 다르게 작성할 수 있습니다.

![Screen_Recording_20201012-144007_1](https://user-images.githubusercontent.com/46275549/95709146-00ed1880-0c99-11eb-85df-6018f1bec403.gif)

## List<Widget>
~~~dart
List<Widget> _widgets = <Widget> [
  Text('First Page'),
  Text('Second Page'),
  Text('Third Page'),
];
~~~
- _widgets의 첫 번째는 'First Page'가 적힌 텍스트 위젯, 두 번째는 'Second Page'가 적힌 텍스트 위젯, 세 번째는 'Third Page'가 적힌 텍스트 위젯으로 선언

~~~dart
_widgets.elementAt(Index),
~~~
- Index 값에 따라 위젯을 불러옴

## bottomNavigationBar
~~~dart
bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.filter_1),
      title: Text('first'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.filter_2),
      title: Text('second'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.filter_3),
      title: Text('third'),
    ),
  ],
  currentIndex: Index,
  selectedItemColor: Colors.orange,
  onTap: _onTap,
),
~~~
- 앱의 하단에 TabBar를 놓기 위해 bottomNavigationBar 위젯 사용
- TabBar의 목록을 나타낼 items
- BottomNavigationBarItem으로 각각의 item 생성
- icon과 title은 필수적으로 들어가야 함(null 값을 주거나 지정하지 않을 시 에러)
- currentIndex를 사용해 Index 값을 선택한 Index 위치 값으로 바꿔줌
- selectedItemColor를 사용해 목록에서 현재 선택한 Tab이 돋보이게 만듬
- onTap을 사용해 눌렀을 때 화면이 전환하게 하는 함수 실행

## _onTap
~~~dart
void _onTap(int index) {
  setState(() {
    Index = index;
  });
}
~~~
- 탭 중 하나를 눌렀을 때 Index 값을 변경
- 이 Index 값으로 위젯 리스트에서 띄울 위젯 결정