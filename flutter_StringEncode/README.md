# flutter_StringEncode

- Flutter에서 String을 int로 변환하는 내용을 모아놓은 것입니다.

-----------------------

## [flutter_hex_string_to_int](https://github.com/OOGEE/Flutter/tree/master/flutter_StringEncode/flutter_hex_string_to_int)

- TextField에 16진수 값을 입력하고 버튼을 누르면 이를 10진수로 변환해 출력합니다.
- 입력값의 대소문자를 가리지 않습니다.(혼합이 가능합니다 ex) Ff = 255)
- String 값을 변환할 수 있기 때문에 String 함수를 이용해 긴 문장에서 값을 추출해 내는 것이 용이합니다.
- 0~f 이외의 값이 들어오면 값을 변환하지 않습니다.(로그에 에러가 출력됩니다.)

## [flutter_color_extraction](https://github.com/OOGEE/Flutter/tree/master/flutter_StringEncode/flutter_color_extraction)

- 각각의 색에 맞는 버튼을 클릭하면 현재 선택된 색상이 무엇인지 표시합니다.
- '고른 색상 RGB 값 추출' 버튼을 누르면 현재 선택된 색상의 color 값을 String으로 변환한 뒤 R, G, B 값을 추출해 보여줍니다.