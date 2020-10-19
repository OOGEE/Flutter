# flutter_list_view

- 상하 스크롤 기능을 구현하는 ListView에 대한 예제입니다.
- 화면의 세로 길이에 제약받지 않고 자유롭게 위젯을 크게 하거나 여러개를 배열하는 작업이 가능합니다.

![Screen_Recording_20201019-093745_One UI Home_1](https://user-images.githubusercontent.com/46275549/96390276-dcd88c80-11ee-11eb-8dbf-2b46ebad17c8.gif)

## ListView
~~~dart
ListView(
  children: [
    ...
  ]
)
~~~
- children 밑에 원하는 위젯을 삽입하면 됨

## TextStyle
~~~dart
TextStyle(fontSize: 80, color: Colors.white, backgroundColor: Colors.blue)
~~~
- fontsize로 Text의 크기 변경
- color로 Text의 색상 변경
- backgroundColor로 Text의 배경 색 변경