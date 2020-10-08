# flutter_page_route_multi

- MainPage에서 'Go SecondPage' 버튼을 누르면 SecondPage가 띄워집니다.
- MainPage에서 'Go ThirdPage' 버튼을 누르면 ThirdPage가 띄워집니다.
- SecondPage와 ThirdPage에서 버튼을 누르면 MainPage로 돌아옵니다.

![Screen_Recording_20201005-135016_One UI Home_1](https://user-images.githubusercontent.com/46275549/95041513-dee01d00-0711-11eb-899a-49c0139fcdf5.gif)

## Navigator push

~~~dart
import 'package:'project_name'/'page_name'.dart'; // 불러올 페이지를 정의해야 함
~~~

~~~dart
Navigator.push(context, MaterialPageRoute(builder: (context) {return 'page_name'()}); // 'page_name' 페이지를 띄움
~~~

## Navigator pop

~~~dart
Navigator.pop(context); // 현재 띄워진 창을 닫음
~~~

## Row, Children

- Children 내부의 위젯들을 가로로 배치

## Expanded

- 화면의 좌우 길이에 맞게 각각 위젯의 가로 크기 조절
