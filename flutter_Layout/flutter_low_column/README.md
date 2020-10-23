# flutter_low_column

- 위젯을 가로로 놓는 방식인 Row와 세로로 놓는 방식인 Column에 대한 예제입니다.
- 화면의 길이에 구애받지 않고 크기에 맞춰 늘리는 방식인 Expanded 기능을 사용했습니다.
- Expanded를 사용할 때 사용자가 임의로 비율을 줄 수 있는 flex를 사용했습니다.
- Container가 사용하는 공간 내부에서 위젯의 위치를 지정할 수 있는 alignment를 사용했습니다.
- Container와 위젯 사이의 공간 여유를 줄 수 있는 margin을 사용했습니다.

<div>
<img height="800" src ="https://user-images.githubusercontent.com/46275549/96951371-4fb37180-1527-11eb-9c78-2b8077071edf.jpg">
</div>

## Row
~~~dart
Row(
  children[
    ...
  ],
),
~~~
- children[ ... ]에서 ...에 원하는 위젯을 넣으면 그 위젯들이 한 줄에 가로로 배치되 화면에 나옴
- 세로의 길이는 children 내부의 위젯 중 가장 긴 세로의 길이 값으로 지정

## Column
~~~dart
Column(
  children[
    ...
  ]
)
~~~
- children[ ... ] 에서 ...에 원하는 위젯을 넣으면 그 위젯들이 세로로 배치되 화면에 나옴

## Expanded, flex
~~~dart
Expanded(
  flex: 6,
  child: Container(
    child: Text("Row Text 1"),
    color: Colors.black12,
  ),
),
Expanded(
  flex: 3,
  child: Container(
      child: Text("Row Text 2"),
      color: Colors.black26
  ),
),
Expanded(
  flex: 2,
  child: Container(
      child: Text("Row Text 3"),
      color: Colors.black38
  ),
),
~~~
- Expanded는 화면의 길이 크기에 맞춰 위젯을 구성할 수 있게 해줌
- flex 값을 생략하면 1로 기본값을 가짐
- flex 값은 비율 값을 의미함 / Text1, Text2, Text3가 6:3:2의 비율을 차지함

## alignment
~~~dart
alignment: Alignment.centerLeft,
~~~
- alignment로 내부 위젯을 원하는 방식으로 정렬 시킬 수 있음
- 위 코드는 위젯을 컨테이너 내부에서 왼쪽 가운데로 배치함을 의미

## margin
~~~dart
margin: EdgeInsets.all(20.0)
~~~
- margin을 사용하여 여백을 설정할 수 있음
- all(20.0)은 상, 하, 좌, 우 모두 20 값 만큼의 여백을 줌을 의미
- 컨테이너의 높이 = 위젯의 높이 + 여백 값
- 위젯의 길이 = 컨테이너의 길이 - 여백 값

~~~dart
margin: EdgeInsets.only(left: 40, right: 40, top: 10)
~~~
- all이 아닌 only를 사용하면 상, 하, 좌, 우 중 자신이 원하는 방향에 원하는 값의 여백을 삽입할 수 있음