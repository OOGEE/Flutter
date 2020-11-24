# flutter_http_post

- http 통신으로 서버에 데이터를 보내는 예제입니다.
- 버튼을 누르면 TextField에 입력된 데이터를 전송하며, 잘 전송이 됐을 시 보낸 데이터를 돌려받고 이를 보여줍니다.
- "JSONPlaceholder"를 사용해 서버에 데이터를 전송합니다.
- "http" 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.
- TextField에 관한 부분은 설명은 [flutter_text](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_text)를 통해 확인할 수 있습니다.

![Screen_Recording_20201124-101819_1](https://user-images.githubusercontent.com/46275549/100033935-7b838900-2e3e-11eb-9120-366a520608dc.gif)

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
void PostData() async {
  String url = "https://jsonplaceholder.typicode.com/posts";
  http.Response response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: <String, String>{
      'userId': userIdField.text,
      'id': IdField.text,
      'title': titleField.text,
      'body': bodyField.text,
    },
  );
  setState(() {
    text = response.body;
  });
}
~~~
- 입력한 주소로 post한 뒤 결과를 text에 반영
- headers에 Content-Type을 보냄
- application/x-www-form-urlencoded는 Content-Type 중 하나로 자세한 설명은 인터넷 참조
- body에는 key-value 값의 형태로 변수를 지정
- key는 서버에서 지정한 값과 동일해야 함