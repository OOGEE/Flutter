# flutter_color_extraction

- 각각의 색에 맞는 버튼을 클릭하면 현재 선택된 색상이 무엇인지 표시합니다.
- '고른 색상 RGB 값 추출' 버튼을 누르면 현재 선택된 색상의 color 값을 String으로 변환한 뒤 R, G, B 값을 추출해 보여줍니다.

![Screen_Recording_20201008-113658_One UI Home_1](https://user-images.githubusercontent.com/46275549/95408585-c151c400-095a-11eb-9368-9defb975c6aa.gif)

## setNum
~~~dart
void setNum() {
  String CTS; // 현재 color 값을 String으로 저장할 변수
  CTS = currentColor.toString(); // Color(0xFFRRGGBB)으로 나옴
  int Index = CTS.indexOf(')'); // 각각 알맞은 값을 추출하기 위해 )의 위치를 찾음
  setState(() {
    R = int.parse(CTS.substring(Index-6, Index-4), radix : 16); // R값의 위치를 찾아 추출해 정수형으로 변환 후 저장
    G = int.parse(CTS.substring(Index-4, Index-2), radix : 16); // G값의 위치를 찾아 추출해 정수형으로 변환 후 저장
    B = int.parse(CTS.substring(Index-2, Index), radix : 16); // B값의 위치를 찾아 추출해 정수형으로 변환 후 저장
  });
}
~~~