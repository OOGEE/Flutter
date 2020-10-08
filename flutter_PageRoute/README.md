# flutter_PageRoute

- 페이지 이동에 관한 내용을 모아놓은 것입니다.

-----------------------

## [flutter_page_route_basic](https://github.com/OOGEE/Flutter/tree/master/flutter_PageRoute/flutter_page_route_basic)

- Main_Page에서 RaisedButton을 누르면 SecondPage가 띄워집니다.
- SecondPage에서 버튼을 누르면 Main_Page로 돌아옵니다.

## [flutter_page_route_multi](https://github.com/OOGEE/Flutter/tree/master/flutter_PageRoute/flutter_page_route_multi)

- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워집니다.
- MainPage에서 'Go ThirdPage' 버튼을 누르면 ThirdPage가 띄워집니다.
- SecondPage와 ThirdPage에서 버튼을 누르면 MainPage로 돌아옵니다.

## [flutter_page_route_data](https://github.com/OOGEE/Flutter/tree/master/flutter_PageRoute/flutter_page_route_data)

- MainPage 및 SecondPage에서 TextField를 사용해 원하는 텍스트를 입력할 수 있습니다.
- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워지며, TextField에 입력했던 텍스트를 볼 수 있습니다.
- SecondPage에서 'Go MainPage' 버튼을 누르면 MainPage로 돌아가며, TextField에 입력했던 텍스트를 볼 수 있습니다.

## [flutter_page_route_data_plus](https://github.com/OOGEE/Flutter/tree/master/flutter_PageRoute/flutter_page_route_data_plus)

- MainPage 및 SecondPage에서 TextField를 사용해 원하는 텍스트를 입력할 수 있습니다.
- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워지며, TextField에 입력했던 텍스트를 볼 수 있습니다.
- SecondPage에서 'Go MainPage' 버튼을 누르면 MainPage로 돌아가며, TextField에 입력했던 텍스트를 볼 수 있습니다.
- 기존의 flutter_PageRoute_Data에서 여러개의 TextField의 데이터를 페이지 간 교환하는 기능을 추가 구현했습니다.
- 숫자 입력란의 경우 정수를 입력하지 않을 시 에러가 납니다.
- flutter_PageRoute_Data에서 추가된 기능만 설명했습니다.

## [flutter_page_route_back_data](https://github.com/OOGEE/Flutter/tree/master/flutter_PageRoute/flutter_page_route_back_data)

- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워집니다.
- SecondPage에서 첫 번째 데이터 선택인 'a', 'b', 'c' 버튼 중 하나를 누르면 이를 화면에 출력합니다.
- SecondPage에서 두 번째 데이터 선택인 '1', '2', '3' 버튼 중 하나를 누르면 이를 화면에 출력합니다.
- 상단 좌측의 앱바에 뒤로가기 버튼이나 스마트폰 자체의 뒤로가기 버튼을 누르면 MainPage로 돌아가며, 선택했던 데이터가 출력되는 것을 볼 수 있습니다.
- 기존의 flutter_PageRoute_Data_Plus를 기반으로 제작했기 때문에 수정 및 추가한 내용만 설명했습니다.

## [flutter_page_route_integration](https://github.com/OOGEE/Flutter/tree/master/flutter_PageRoute/flutter_page_route_integration)