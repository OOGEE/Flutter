# flutter_page_route_basic

- Main_Page에서 RaisedButton을 누르면 SecondPage가 띄워집니다.
- SecondPage에서 버튼을 누르면 Main_Page로 돌아옵니다.

![Screen_Recording_20201005-134335_One UI Home_1](https://user-images.githubusercontent.com/46275549/95041153-dc30f800-0710-11eb-8d2b-4be7b34890ad.gif)


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
