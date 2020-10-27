# flutter_drop_down_button_plus

- 내부에 사용하는 버튼의 구성을 Int로 제작한 DropdownButton입니다.
- 앞에 해당하는 숫자가 선정되면 뒤에 DropdownButton의 범위를 그에 따라 변경합니다.
- 기존의 [flutter_drop_down_button](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_drop_down_button)을 기반으로 제작했기 때문에 추가 및 수정된 부분만 설명하겠습니다.

<div>
<img height="800" src="https://user-images.githubusercontent.com/46275549/97242408-29e3e080-1837-11eb-8aee-41e57388d5a4.gif">
<img height="800" src="https://user-images.githubusercontent.com/46275549/97242412-2b150d80-1837-11eb-9d8e-89f7edc590af.gif">
</div>

## DropdownButton<int>
~~~dart
DropdownButton<int>(
  value: num1,
  onChanged: (int newInt) {
    setState(() {
      num1 = newInt;
      num2 = newInt;
      num3 = newInt;
    });
  },
  items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map<DropdownMenuItem<int>>((int value) {
    return DropdownMenuItem<int>(
      value: value,
      child: Text(value.toString()),
    );
  }).toList(),
),
~~~
- 내부에 해당하는 값을 int로 설정하는 것이 가능
- 버튼을 int로 사용하도록 제작했기 때문에 items의 내부 내용 또한 int로 만들어 줘야 함

## setState
~~~dart
setState(() {
  num1 = newInt;
  num2 = newInt;
  num3 = newInt;
});
~~~
- 제일 앞의 범위에 해당하는 값을 변경하면 그 뒤의 값들도 이에 맞춰 변경되게 함
- num2와 num3의 기존 값이 0인데 num1이 0보다 큰 값을 갖게 된다면 리스트에 없는 것을 선택해 에러가 나기 때문
- 두 번째 범위에 해당하는 값과 세 번째 해당하는 값도 개념이 동일함

## items
~~~dart
items: <int>[
  for (int i = num1; i < 11; i++) i
].\~
~~~
- num1의 값을 가져와 for문으로 num1부터 10까지 생성함
- 이를 통해 동적인 생성이 가능해짐