# flutter_basic_widgets

- 화면에 원하는 문자들(String)을 보여주는 Text 위젯과 이를 자신이 원하는 스타일로 적용하는 방법을 다뤘습니다.
- 한 줄에 각각의 텍스트를 원하는 서식으로 보여줄 수 있는 RichText, TextSpan 위젯을 구현했습니다.
- 사용자가 직접 문자를 입력할 수 있는 TextField 위젯과 이를 자신이 원하는 스타일로 적용하는 방법을 다뤘습니다.

![Screen_Recording_20201020-111503_One UI Home_1](https://user-images.githubusercontent.com/46275549/96531961-d537e700-12c5-11eb-8975-c8d8fe0d0693.gif)
![Screen_Recording_20201020-111604_1](https://user-images.githubusercontent.com/46275549/96531963-d6691400-12c5-11eb-9e50-8a03d6700a9a.gif)

## Text
~~~dart
Text(
  "Text",
  style: TextStyle(
    fontSize: 40,
    color: Colors.white,
    backgroundColor: Colors.green,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline),
  textAlign: TextAlign.center,
),
~~~
- 'Text'라는 글씨를 띄움
- style: TextStyle(...)를 통해 Text 위젯의 스타일을 정함
- fontsize로 글씨의 크기 조절 가능
- color로 글씨의 색 제어 가능
- backgroundColor로 글씨의 배경 색 제어 가능
- fontWeight는 글씨 굵기 / bold 대신 w100~w900으로 적용 가능 / bold = w700
- fontStyle은 글씨체
- decoration: TextDecoration.underline으로 글씨에 밑줄 치는 것 가능
- textAlign: TextAlign.center로 글씨 정중앙 배치 가능

## RichText, TextSpan
~~~dart
RichText(
  text: TextSpan(
    text: 'This',
    style: TextStyle(fontSize: 20, color: Colors.black),
    children: <TextSpan>[
      TextSpan(text: ' is', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' Text', style: TextStyle(color: Colors.blue)),
      TextSpan(text: ' Span'),
    ]),
),
~~~
- 한 줄에 사용하는 기능을 위해 RichText로 감싸야 함
- 처음에 나올 기본 text를 'This'로 지정
- 기본 스타일을 크기를 20, 색을 검정으로 지정
- children 내부에 추가로 이을 text들을 TextSpan으로 구현
- 기본 스타일을 따라가되, 텍스트 별로 스타일을 추가로 지정하거나 수정할 수 있음

## TextField - ID, Password
~~~dart
final TextFieldController1 = TextEditingController();
final TextFieldController2 = TextEditingController();
~~~
- TextField에 입력할 문장을 사용하거나 제어하기 위한 변수

~~~dart
TextField(
  keyboardType: TextInputType.emailAddress,
  controller: TextFieldController1,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'ID',
    labelStyle: TextStyle(),
    hintText: 'ID를 입력하세요',
    hintStyle: TextStyle(),
    helperText: 'ID를 입력하세요',
    helperStyle: TextStyle(),
    prefixIcon: Icon(Icons.account_box),
    suffixIcon: InkWell(
      onTap: () => TextFieldController1.clear(),
      child: Icon(Icons.cancel),
    ),
  ),
),
~~~
- keyboardType: TextInputType.emailAddress를 사용해 TextField를 눌렀을 때 처음 뜨는 키보드의 형태를 이메일 입력 형태로 설정
- controller를 사용해 입력되는 문장을 TextFieldController1와 연동
- decoration을 통해 TextField 위젯의 스타일을 정함
- border: OutlineInputBorder()를 사용해 TextField를 감싸는 사각형 디자인을 구현 / Default는 밑줄
- labelText는 TextField에 아무것도 입력이 되지 않고 선택되지 않았을 때 TextField에 출력되는 문장임 / 클릭 시 상단 왼쪽으로 위치가 옮겨지며 사라지지 않음
- labelStyle을 사용해 labelText의 서식을 지정할 수 있음
- hintText는 TextField가 선택 된 상태에서 아무것도 입력되지 않았을 때 TextField에 출력되는 문장임 / TextField에 무언가 입력할 시 사라짐
- labelText가 없을 시 아무것도 입력이 되지 않은 TextField에는 hintText가 출력됨
- hintStyle을 사용해 hintText의 서식을 지정할 수 있음
- helperText는 TextField 좌측 하단에 출력되는 문장임 / 사라지지 않음
- helperStyle을 사용해 helperText의 서식을 지정할 수 있음
- prefixIcon을 사용해 TextField 내부 좌측에 아이콘 삽입 가능
- suffixIcon에 InkWell을 사용해 아이콘 버튼 생성 가능 / TextField 내부 우측에 위치
- 아이콘 클릭 시 TextFieldController1의 내용을 전부 삭제함

~~~dart
TextField(
  style: TextStyle(color: Colors.blue),
  maxLength: 10,
  keyboardType: TextInputType.number,
  obscureText: true,
  controller: TextFieldController2,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'PassWord',
    hintText: '비밀번호를 입력하세요',
    prefixIcon: Icon(Icons.vpn_key),
    suffixIcon: InkWell(
      onTap: () => TextFieldController2.clear(),
      child: Icon(Icons.cancel),
    ),
  ),
),
~~~
- 위의 TextField - ID와 중복되는 내용은 설명하지 않았음
- style을 사용해 TextField 내부의 글씨를 기존 Text를 꾸몄던 것처럼 서식 지정 가능
- maxLength를 사용해 글씨 길이 제어 가능 / TextField 우측 하단에 '현재 글씨 길이 / 최대 글씨 길이'의 형태로 표현됨
- keyboardType: TextInputType.number를 사용해 TextField를 눌렀을 때 처음 뜨는 키보드의 형태를 숫자 입력 형태로 설정
- obscureText를 사용해 입력된 문자를 한 문자로 대체되어 보이게 함 / 실제 내용이 변경되는 것이 아님