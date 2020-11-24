# flutter_http_get

- http 통신으로 서버에서 데이터를 가져오는 예제입니다.
- 본 예제는 어플이 실행될 때 데이터를 가져옵니다.
- "JSONPlaceholder"를 사용해 서버의 데이터를 샘플로 가져옵니다.
- "http" 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

<div>
<img height="800" src="https://user-images.githubusercontent.com/46275549/99921685-64c23100-2d6f-11eb-8b29-a05df1062272.jpg" />
</div>

## pubspec.yaml
~~~dart
http: ^0.12.2
~~~
- http 패키지 사용

## AndroidManifest
~~~
<uses-permission android:name="android.permission.INTERNET" />
~~~
- "flutter 프로젝트 폴더 위치"\android\app\src\main\AndroidManifest.xml에 <application 윗 부분에 위 코드 삽입
- 인터넷 사용 권한을 줌

## MainPage
~~~dart
import 'package:http/http.dart' as http;
~~~
- 패키지를 사용하기위해 불러오고 http라는 이름으로 대체

~~~dart
void GetData() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/todos/1');
  setState(() {
    text = response.body;
  });
}
~~~
- 입력한 주소로부터 데이터를 가져온 뒤 text에 이를 반영
- response.body는 response의 본문이 담겨있음
- response.headers로 response의 헤더를 불러올 수 있고, response.statusCode로 응답 상태 코드를 불러올 수 있음

~~~dart
@override
void initState() {
  super.initState();
  GetData();
}
~~~
- 어플 실행 시 GetData 함수를 실행