# flutter_expansion_tile

- Expansion Tile에 해당하는 부분을 누르면 children 내부에 선언해 뒀던 위젯들이 출력되고, 다시 누르면 없어지게 하는 예제입니다.
- drop down button과 비슷한 개념이지만, 내부의 위젯을 누르거나 바깥쪽을 누른다고 사라지지 않으며, 생성된 위젯이 공간을 차지한다는 차이가 있습니다.

![Screen_Recording_20201125-085942_One UI Home_1](https://user-images.githubusercontent.com/46275549/100165124-c8c63000-2efc-11eb-8592-a26432f4ccd6.gif)

## ExpansionTile
~~~dart
ExpansionTile(
  title: Text("Expansion"),
  children: [
    Text("Tile 1"),
    RaisedButton(
      child: Text("Tile 2"),
      onPressed: () {},
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Tile 3_1"),
        Text("Tile 3_2"),
      ],
    ),
    ExpansionTile(
      title: Text("Tile 4"),
      children: [
        Text("Tile 4_1"),
        Text("Tile 4_2"),
      ],
    ),
  ],
),
~~~
- title은 Expansion Tile을 누르지 않았을 때 보여지는 내용
- 예제에서는 Text로 단일 위젯을 사용했지만, Column이나 Row를 사용해 여러개의 위젯을 삽입할 수 있음
- children은 Expansion Tile을 눌렀을 때 출력될 위젯들을 선언
- 예제와 같이 내부에 Text, RaisedButton과 같은 단일 위젯 뿐만 아니라 Column, Row를 사용할 수 있고, 내부에 ExpansionTile을 추가로 삽입할 수도 있음