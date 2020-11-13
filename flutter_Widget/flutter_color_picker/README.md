# flutter_color_picker

- 자신이 원하는 색상을 찾고, 이를 사용할 수 있는 기능을 구현했습니다.
- "flutter_colorpicker"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

SlidePicker | MaterialPicker |
:---:|:---:|
![](https://user-images.githubusercontent.com/46275549/98613950-bebc0300-233a-11eb-8046-51677133a84a.gif)  |  ![](https://user-images.githubusercontent.com/46275549/98613946-bd8ad600-233a-11eb-94c0-03c37e9c23cc.gif)

## pubspec.yaml
~~~dart
flutter_colorpicker: ^0.3.4
~~~
- flutter_colorpicker 패키지 사용

## currentColor
~~~dart
Color currentColor = Colors.green;
void changeColor(Color color) => setState(() => currentColor = color);
~~~
- 색 값을 저장하는 변수인 currentColor를 선언하고 초기 값을 초록색으로 지정
- changeColor 함수를 통해 색이 변할 시 이를 즉시 currentColor에 반영할 수 있게 함

## Slide Picker
~~~dart
SlidePicker(
  pickerColor: currentColor,
  onColorChanged: changeColor,
  enableAlpha: true,
  displayThumbColor: true,
  showLabel: true,
  paletteType: PaletteType.rgb,
),
~~~
- 좌우로 슬라이드를 움직여 R, G, B 값과 밝기 값을 조절할 수 있는 위젯
- pickerColor로 색을 지정한 변수와 연동
- onColorChanged로 색이 변했을 때 changeColor 함수를 실행해 이를 currentColor에 반영
- enableAlpha로 밝기 값을 조절할 수 있게 함
- displayThumbColor로 슬라이더의 위치를 나타내는 원의 색을 currentColor와 같게 함
- showLabel로 현재 R, G, B, A(밝기) 값을 수치로 보여 줌
- PaletteType.rgb로 R, G, B 값으로 색을 고를 수 있게 함

## MaterialPicker
~~~dart
MaterialPicker(
  pickerColor: currentColor,
  onColorChanged: changeColor,
  enableLabel: true,
),
~~~
- 자신이 원하는 색을 찾아 버튼을 누르듯이 색을 선택할 수 있는 위젯
- 20개로 나눠진 테마 색이 있고, 그 내부로 들어가면 14개의 디테일한 색들이 있어 선택 가능
- pickerColor로 색을 지정한 변수와 연동
- onColorChanged로 색이 변했을 때 changeColor 함수를 실행해 이를 currentColor에 반영
- enableLable로 이 값의 R, G, B 값을 16진수로 보여줌

## Dialog

- Dialog에 관한 설명은 [flutter_dialog](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_dialog)를 통해 확인