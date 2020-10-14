# flutter_stack

- Stack을 사용해 위젯의 위치를 자유롭게 배치할 수 있습니다.
- Stack 내부의 가장 큰 가로, 세로 길이를 가진 위젯이 기준이 됩니다. ex) 가장 큰 위젯 위치 기준 위에서 50, 왼쪽에서 50

<img height ="800" src="https://user-images.githubusercontent.com/46275549/95929692-960a2180-0dff-11eb-8350-232f264d834d.jpg">

## Stack / Positioned
~~~dart
body: Stack(
  children: [
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      ...
    ),
    Positioned(
      left: 50,
      top: 50,
      ...
    ),
    Positioned(
      right: 50,
      bottom: 50,
      ...
    ),
  ],
),
~~~
- Container의 width와 height를 스마트폰의 가로, 세로 길이와 같게 함(가장 큰 사이즈를 갖는 기준 위젯이 됨)
- Positioned에 left, right, top, bottom을 사용해 기준 위젯으로부터 위젯을 일정 위치만큼 떨어지게 배정