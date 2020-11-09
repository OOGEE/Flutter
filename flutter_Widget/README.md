# flutter_Widget

- 위젯에 관해 모아놓은 것입니다.

-----------------------

## [flutter_button](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_button)

- 다양한 버튼들을 구현하는 방법을 다뤘습니다.
- FlatButton, OutlineButton, RaisedButton, IconButton, InkWell을 구현했습니다.
- 버튼 디자인 수정하는 것을 구현했습니다.
- 버튼 내부에 아이콘과 Text를 같이 집어넣는 방식을 구현했습니다.
- 버튼에 텍스트 대신 이미지를 삽입하는 방법 구현했습니다.
- 기능은 FlatButton에 모두 모여있으며, 다른 버튼들은 차별화된 기능만 설명했습니다.
- icon을 삽입하는 경우도 위와 동일합니다.

## [flutter_dialog](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_dialog)

- Dialog는 화면을 다 채우지 않는 작은 팝업 화면으로 사용자에게 정보를 입력 받거나, 확인을 위해 창을 띄워주는데 사용하는 위젯입니다.
- Dialog 창의 'OK'나 'close'를 누르면 팝업 창이 사라집니다.

## [flutter_drop_down_button](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_drop_down_button)

- 박스를 누르면 리스트가 나오고 그 중 하나를 선택 할 수 있는 기능을 가진 DropdownButton 위젯에 관한 내용입니다.
- 안에 들어갈 내용을 수정할 수 있으며, 선택하기 이전에 힌트를 제공합니다.

## [flutter_drop_down_button_plus](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_drop_down_button_plus)

- 내부에 사용하는 버튼의 구성을 Int로 제작한 DropdownButton입니다.
- 앞에 해당하는 숫자가 선정되면 뒤에 DropdownButton의 범위를 그에 따라 변경합니다.
- 기존의 flutter_drop_down_button을 기반으로 제작했기 때문에 추가 및 수정된 부분만 설명했습니다.

## [flutter_image](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_image)

- 원하는 이미지를 사용하는 방법입니다.

## [flutter_number_picker](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_number_picker)

- 흔히 알람에서 시간을 적용할 때 사용하는 기능 중 하나인 상하로 스와이프 해 숫자를 정하는 기능을 가진 위젯입니다.
- "numberpicker"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 flutter_Package를 통해 확인할 수 있습니다.

## [flutter_slider](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_slider)

- 지정한 범위 내에 값을 좌우로 스와이프하여 고를 수 있습니다.
- 최소값과 최대값의 범위를 직접 입력할 수 있고, 값의 단계를 나누는 것도 가능합니다.
- 슬라이더를 눌렀을 때 현재 값이 무엇인지 보여줍니다.
- 슬라이더를 꾸미는 방법은 flutter_slider_value에서 확인할 수 있습니다.

## [flutter_snackbar](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_snackbar)

- snackbar는 하단의 작은 팝업으로 사용자에게 무언가 확인시켜 줄 때 띄우는 데 사용하는 위젯입니다.
- snackbar의 '닫기'를 누르거나 일정 시간이 지날 시 사라집니다.

## [flutter_swipe](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_swipe)

- 사진을 좌우, 상하로 스와이프해 한 공간에서 여러가지 사진을 보여줄 수 있는 위젯입니다.
- "flutter_swiper"라는 패키지를 사용해 제작했습니다.
- 패키지 사용 방법은 flutter_Package를 통해 확인할 수 있습니다.
- 이미지 사용 방법은 flutter_image를 통해 확인할 수 있습니다.

## [flutter_text](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_text)

- 화면에 원하는 문자들(String)을 보여주는 Text 위젯과 이를 자신이 원하는 스타일로 적용하는 방법을 다뤘습니다.
- 한 줄에 각각의 텍스트를 원하는 서식으로 보여줄 수 있는 RichText, TextSpan 위젯을 구현했습니다.
- 사용자가 직접 문자를 입력할 수 있는 TextField 위젯과 이를 자신이 원하는 스타일로 적용하는 방법을 다뤘습니다.

## [flutter_toast](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_toast)

- toast는 하단의 작은 팝업으로 사용자에게 무언가 확인시켜 줄 때 띄우는 위젯입니다.
- 일정 시간이 지나면 자동으로 사라집니다.
- "fluttertoast"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 flutter_Package를 통해 확인할 수 있습니다.


## [flutter_url](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_url)

- 버튼을 누르면 스마트폰 자체의 브라우저를 통해 웹 화면을 띄울 수 있습니다.
- 버튼에 관한 설명은 하지 않았습니다.
- "url_launcher"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 flutter_Package를 통해 확인할 수 있습니다.