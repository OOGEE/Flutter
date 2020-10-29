# flutter_number_picker

- 흔히 알람에서 시간을 적용할 때 사용하는 기능 중 하나인 상하로 스와이프 해 숫자를 정하는 기능을 가진 위젯입니다.
- "numberpicker"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

![Screen_Recording_20201029-101157_One UI Home_1](https://user-images.githubusercontent.com/46275549/97513382-706c4300-19cf-11eb-9002-9d5144118bd2.gif)

## pubspec.yaml
~~~dart
numberpicker: ^1.2.1
~~~
- numberpicker 패키지 사용

## NumberPicker.integer
~~~dart
NumberPicker.integer(
  initialValue: value,
  minValue: 0,
  maxValue: 100,
  step: 5,
  infiniteLoop: true,
  zeroPad: true,
  onChanged: (val) {
    setState(() {
      value = val;
    });
  },
),
~~~
- initialValue로 초기값 지정
- minValue로 최소값, maxValue로 최대값 지정
- step으로 0에서 100까지 1씩 증가하던 것을 0에서 100까지 5씩 증가하게 만들어 줌
- infiniteLoop로 minValue에서 위로 스와이프해 maxValue로 갈 수 있게 하거나, maxValue에서 아래로 스와이프해 minValue로 갈 수 있게 해 연속적으로 사용할 수 있게 함
- zeroPad로 maxValue보다 자릿수가 적은 값들의 값 앞에 0을 붙임(예를들어 7은 007로 나옴)