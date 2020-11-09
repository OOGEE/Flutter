# flutter_toast

- toast는 하단의 작은 팝업으로 사용자에게 무언가 확인시켜 줄 때 띄우는 위젯입니다.
- 일정 시간이 지나면 자동으로 사라집니다.
- "fluttertoast"라는 패키지를 사용해 제작했습니다.
- 패키지 적용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.

![Screen_Recording_20201109-094758_One UI Home_1](https://user-images.githubusercontent.com/46275549/98489317-d29b3280-2270-11eb-9442-911745c4ab50.gif)

## pubspec.yaml
~~~dart
fluttertoast: ^7.1.1
~~~
- fluttertoast 패키지 사용

## Fluttertoast.showToast
~~~dart
Fluttertoast.showToast(
  msg: "버튼을 눌렀습니다.",
  gravity: ToastGravity.BOTTOM,
  backgroundColor: Colors.lightBlue,
  textColor: Colors.white,
  fontSize: 20,
);
~~~
- Fluttertoast.showToast로 toast 출력
- msg로 띄울 메세지 내용 지정
- gravity로 toast의 위치 지정
- backgroundColor로 toast의 배경 색 지정
- textColor로 msg의 색 지정
- fontSize로 msg의 크기 지정