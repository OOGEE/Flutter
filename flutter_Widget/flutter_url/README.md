# flutter_url

- 버튼을 누르면 스마트폰 자체의 브라우저를 통해 웹 화면을 띄울 수 있습니다.
- 버튼에 관한 설명은 하지 않았습니다.
- "url_launcher"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

![Screen_Recording_20201028-103621_Chrome_1](https://user-images.githubusercontent.com/46275549/97380058-96c7ab00-1909-11eb-9a49-fa47f68e654c.gif)

## pubspec.yaml
~~~dart
url_launcher: ^5.6.0
~~~
- url_launcher 패키지 사용

## _launchURL
~~~dart
_launchURL() async {
  String url = "https://github.com/OOGEE/Flutter";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
~~~
- 버튼을 눌렀을 때 실행되는 함수
- String url으로 웹 페이지 주소 미리 선언
- canLaunch를 통해 웹 페이지를 띄울 수 있는지 확인
- 만약 띄울수 있다면 launch(웹 페이지를 띄움)
- 띄울수 없다면 띄우지 않고 처리


