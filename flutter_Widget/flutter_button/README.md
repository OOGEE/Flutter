# flutter_button

- 다양한 버튼들을 구현하는 방법을 다뤘습니다.
- FlatButton, OutlineButton, RaisedButton, IconButton, InkWell을 구현했습니다.
- 버튼 디자인 수정하는 것을 구현했습니다.
- 버튼 내부에 아이콘과 Text를 같이 집어넣는 방식을 구현했습니다.
- 버튼에 텍스트 대신 이미지를 삽입하는 방법 구현했습니다.
- 기능은 FlatButton에 모두 모여있으며, 다른 버튼들은 차별화된 기능만 설명했습니다.
- icon을 삽입하는 경우도 위와 동일합니다.
<div>
<img height="800" src="https://user-images.githubusercontent.com/46275549/96809056-1b6f8080-1455-11eb-8685-251fe7baaa1b.gif">
<img height="800" src="https://user-images.githubusercontent.com/46275549/96809059-1ca0ad80-1455-11eb-84ce-34f2dbf3833e.gif">
</div>

## FlatButton
~~~dart
FlatButton(
  child: Text("Flat Button"),
  onPressed: () {},
  onLongPress: () {},
  textColor: Colors.white,
  color: Colors.green,
  splashColor: Colors.red,
  highlightColor: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16.0),
    side: BorderSide(color: Colors.red, width: 3),
  ),
),
~~~
- child의 내용을 버튼에 사용할 수 있는 형태의 버튼
- child: Text("~")를 사용해 버튼 내부에 원하는 Text 삽입
- onPressed와 onLongPressed를 사용해 짧게 터치 했을 때와 길게 터치 했을 때의 기능을 나눌 수 있음 / {} 내부에 실행할 기능 및 함수 삽입 가능
- color로 배경색을, textColor로 text의 Color를 변경 가능
- splashColor로 짧게 터치했을 시 퍼지는 색을 지정 가능
- highlightColor로 길게 터치했을 시 배경색을 잠시 변경
- shape: RoundedRectangleBorder로 버튼의 외관 변경 가능
- borderRadius: BorderRadius.circular(n)을 사용해 n의 값이 클 수록 모서리를 둥글게 제작할 수 있음
- side: BorderSide(color: Colors.red, width: 3)를 사용해 버튼을 감싸는 선을 제작할 수 있음 / color는 선의 색 width는 선의 두께

~~~dart
FlatButton.icon(
  label: Text("Flat Icon Button"),
  icon: Icon(Icons.check_box),
  onPressed: () {},
),
~~~
- FlatButton 내부에 icon을 집어넣을 수 있음
- icon을 사용 할 때는 child: Text("\~")가 아닌 label: Text("\~")가 되야 함
- icon을 넣지 않을 시 에러
- FlatButton에서 설명한 onLongPressed, color, textColor, splashColor, highlightColor, shape 사용 가능

## OutlineButton
~~~dart
OutlineButton(
  child: Text("Out Line Button"),
  onPressed: () {},
),
~~~
- FlatButton에서 회식 얇은 선이 버튼을 감싸는 기본 디자인을 가짐
- FlatButton에서 설명한 onLongPressed, color, textColor, splashColor, highlightColor, shape 사용 가능

~~~dart
OutlineButton.icon(
  label: Text("Out Line Icon Button"),
  icon: Icon(Icons.check_box),
  onPressed: () {},
),
~~~
- OutlineButton 내부에 Icon을 사용할 수 있음
- OutlineButton과 사용 가능한 기능이 같음

## RaisedButton
~~~dart
RaisedButton(
  child: Text("Raised Button"),
  onPressed: () {},
),
~~~
- FlatButton에서 배경이 회색이며, 음영 효과를 주는 기본 디자인을 가짐
- FlatButton에서 설명한 onLongPressed, color, textColor, splashColor, highlightColor, shape 사용 가능

~~~dart
child: RaisedButton.icon(
  label: Text("Raised Icon Button"),
  icon: Icon(Icons.check_box),
  onPressed: () {},
),
~~~
- RaisedButton 내부에 Icon을 사용할 수 있음
- RaisedButton과 사용 가능한 기능이 같음

## IconButton
~~~dart
IconButton(
  icon: Icon(Icons.favorite_border),
  color: Colors.red,
  onPressed: () {},
),
~~~
- Icon을 사용해 만드는 버튼
- Icon 크기만큼 Button 크기 할당
- color를 사용해 Icon의 색상 변경 가능
- FlatButton에서 설명한 splashColor, highlightColor 사용 가능

## InkWell
~~~dart
InkWell(
  child: Text(
    "InkWell",
    style: TextStyle(
      fontSize: 40,
      color: Colors.white,
      backgroundColor: Colors.black),
  ),
  onTap: () {},
  onDoubleTap: () {},
),
~~~
- FlatButton과 비슷하지만 하지만, 실질적으로 버튼이 아닌 버튼 기능을 하는 위젯
- TextStyle을 지정하는 방법은 [flutter_text](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_text)에서 확인
- onDoubleTap을 통해 더블 클릭 했을 시 구현되는 기능 분리 가능
- FlatButton에서 설명한 onLongPressed, splashColor, highlightColor 사용 가능

## Image Button
~~~dart
FlatButton(
  child: Image.asset('images/seoul.jpg'),
  onPressed: () {},
),
~~~
- child에 Image.asset('~')을 사용함으로써 Text가 아닌 Image를 사용해 버튼을 제작하는 것이 가능
- FlatButton이 아닌 OutlineButton, RaisedButton, InkWell도 동일하게 사용 가능
- [flutter_image](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_image)에서 이미지 사용하는 방법 확인