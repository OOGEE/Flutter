# flutter_tabbar_basic

- 상단 Appbar에 TabBar를 추가해 한 페이지에 여러 페이지 중 하나를 띄울 수 있게 합니다.
- 상단의 탭바 메뉴 중 하나를 선택하거나, 좌우 슬라이드를 통해 페이지를 변경할 수 있습니다.
- 각각의 탭바에 나올 페이지의 내용을 다르게 작성할 수 있습니다.

## TabBar
~~~dart
TabController controller;
~~~
- 탭바 메뉴 중 하나를 선택하거나, 좌우 슬라이드를 통해 다른 페이지를 띄우기 위해 TabController 변수 선언

~~~dart
return DefaultTabController
~~~
- 수동으로 탭을 띄우는 것이 아닌 controller와 연동해 자동으로 페이지를 띄우기 위해 DefaultTabController 사용

~~~dart
length: 3,
~~~
- Tab의 갯수를 지정

~~~dart
bottom: TabBar(tabs: <Widget>[
  Tab(text: 'first'),
  Tab(text: 'second'),
  Tab(text: 'third'),
],),
~~~
- 탭의 위치를 Appbar의 tittle 아래에 놓고 각각 탭의 이름을 'first', 'second', 'third'로 지정

~~~dart
body: TabBarView(
  controller: controller,
  children: <Widget>[
    Container(
      child: Text("First Page"),
    ),
    Container(
      child: Text("Second Page"),
    ),
    Container(
      child: Text("Third Page"),
    ),
  ],
),
~~~
- TabBarView와 Controller를 사용해 각각의 페이지를 선택했을 때 " 페이지 이름 + Page "가 출력
- children 밑의 Container 각각이 TabBar 각각의 페이지 디자인
- 첫 번째 Tab이 첫 번째 선언한 Container, 두 번째 Tab이 두 번째 선언한 Container와 같은 식으로 구현