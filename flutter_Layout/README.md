# flutter_Layout

- 레이아웃 구성에 관해 모아놓은 것입니다.

-------------------------

## [flutter_TabBar](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_TabBar)

- TabBar에 관한 내용을 모아놓은 것입니다.

## [flutter_app_bar](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_app_bar)

- 앱바의 디자인을 지정하는 예제입니다.
- 앱바에 들어가는 텍스트와 디자인, 가운데 정렬이 가능합니다.
- 앱바의 색을 바꾸는 것이 가능합니다.
- 앱바의 왼쪽에 leading, 오른쪽에 actions로 아이콘 버튼 배치가 가능합니다.
- 각각의 버튼에 디자인 적용이 가능합니다.

## [flutter_gradient](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_gradient)

- Container의 decoration 기능 중 하나인 gradient 기능을 구현했습니다.
- 색상 그라데이션을 이용해 디자인을 꾸밀 수 있습니다.
- 시작점과 끝점을 사용해 그라데이션을 표현하는 LinearGradient와 일정 포인트를 중심으로 그라데이션을 표현하는 RadialGradient 2가지를 구현했습니다.

## [flutter_gradient_plus](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_gradient_plus)

- Container의 decoration 기능 중 하나인 gradient 기능을 구현했습니다.
- 색상 그라데이션을 이용해 디자인을 꾸밀 수 있습니다.
- 시작점과 끝점을 사용해 그라데이션을 표현하는 LinearGradient와 일정 포인트를 중심으로 그라데이션을 표현하는 RadialGradient 2가지를 구현했습니다.
- 기존의 flutter_gradient에 tileMode 기능을 활용해 디자인을 변경한 것이기 때문에 수정한 부분만 설명했습니다.

## [flutter_list_view](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_list_view)

- 상하 스크롤 기능을 구현하는 ListView에 대한 예제입니다.
- 화면의 세로 길이에 제약받지 않고 자유롭게 위젯을 크게 하거나 여러개를 배열하는 작업이 가능합니다.

## [flutter_list_view_plus](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_list_view_plus)

- 상하 스크롤 기능을 구현하는 ListView에 대한 예제입니다.
- 화면의 세로 길이에 제약받지 않고 자유롭게 위젯을 크게 하거나 여러개를 배열하는 작업이 가능합니다.
- 내부에 뷰를 추가로 넣어 제작하는 것이 가능합니다.
- 기존의 flutter_list_view를 기반으로 제작했기 때문에 수정 및 추가한 내용만 설명했습니다.

## [flutter_low_column](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_low_column)

- 위젯을 가로로 놓는 방식인 Row와 세로로 놓는 방식인 Column에 대한 예제입니다.
- 화면의 길이에 구애받지 않고 크기에 맞춰 늘리는 방식인 Expanded 기능을 사용했습니다.
- Expanded를 사용할 때 사용자가 임의로 비율을 줄 수 있는 flex를 사용했습니다.
- Container가 사용하는 공간 내부에서 위젯의 위치를 지정할 수 있는 alignment를 사용했습니다.
- Container와 위젯 사이의 공간 여유를 줄 수 있는 margin을 사용했습니다.

## [flutter_stack](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_stack)

- Stack을 사용해 위젯의 위치를 자유롭게 배치할 수 있습니다.
- Stack 내부의 가장 큰 가로, 세로 길이를 가진 위젯이 기준이 됩니다. ex) 가장 큰 위젯 위치 기준 위에서 50, 왼쪽에서 50

