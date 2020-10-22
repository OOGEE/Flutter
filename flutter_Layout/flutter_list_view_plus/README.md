# flutter_list_view_plus

- 상하 스크롤 기능을 구현하는 ListView에 대한 예제입니다.
- 화면의 세로 길이에 제약받지 않고 자유롭게 위젯을 크게 하거나 여러개를 배열하는 작업이 가능합니다.
- 내부에 뷰를 추가로 넣어 제작하는 것이 가능합니다.
- 기존의 [flutter_list_view](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_list_view)를 기반으로 제작했기 때문에 수정 및 추가한 내용만 설명했습니다.

![Screen_Recording_20201019-102846_One UI Home_1](https://user-images.githubusercontent.com/46275549/96392122-077a1380-11f6-11eb-8621-74b325e3a71a.gif)

## Row
~~~dart
body: ListView(
  children: [
    Row(
      children: [
        Text(
          "Text",
          style: TextStyle(fontSize: 50),
        ),
        RaisedButton(
          child: Text("Button", style: TextStyle(fontSize: 50),),
          onPressed: () {},
        ),
      ],
    ),
  ],
),
~~~
- ListView는 기본적으로 Column과 같이 세로로 위젯을 배치하는데 그 내부에 Row를 추가하고 싶을 때 위와 같은 방식으로 추가 가능

## Image
- [flutter_image](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_image) 참고