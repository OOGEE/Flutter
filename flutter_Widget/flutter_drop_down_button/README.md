# flutter_drop_down_button

- 박스를 누르면 리스트가 나오고 그 중 하나를 선택 할 수 있는 기능을 가진 DropdownButton 위젯에 관한 내용입니다.
- 안에 들어갈 내용을 수정할 수 있으며, 선택하기 이전에 힌트를 제공합니다.
- 예제 코드에서는 String으로 사용했지만 원하는 자료형으로 바꿔서 사용하는 것이 가능합니다. (단, items와 자료형이 일치해야 합니다.)

![Screen_Recording_20201026-144847_One UI Home_1](https://user-images.githubusercontent.com/46275549/97137997-86dd8900-179a-11eb-9b18-21875ab4abc5.gif)

## onChanged
~~~dart
onChanged: (String newValue) {
  setState(() {
    ButtonValue = newValue;
  });
},
~~~
- 버튼을 선택했을 때 실행되는 기능인 onChanged
- 선택한 것을 볼 수 있게 함

## items
~~~dart
items: [
  '첫 번째',
  '두 번째',
  '세 번째',
  '네 번째',
].map<DropdownMenuItem<String>>(
  (String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  },
).toList(),
~~~
- items 내부에 DropdownButton에 띄울 내용들을 선언

## hint
~~~dart
hint: Text('선택하세요')
~~~
- 아무것도 선택하지 않았을 때 가이드를 제공함