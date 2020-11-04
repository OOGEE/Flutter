# flutter_dialog

- Dialog는 화면을 다 채우지 않는 작은 팝업 화면으로 사용자에게 정보를 입력 받거나, 확인을 위해 창을 띄워주는데 사용하는 위젯입니다.
- Dialog 창의 'OK'나 'close'를 누르면 팝업 창이 사라집니다.

![Screen_Recording_20201104-153637_One UI Home_1](https://user-images.githubusercontent.com/46275549/98077931-7329d500-1eb4-11eb-8767-757db2c26e56.gif)

## show_Dialog()
~~~dart
void show_Dialog() {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Dialog"),
        content: Text("다이얼로그 창을 띄웠습니다."),
        actions: <Widget>[
          new FlatButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          new FlatButton(
            child: Text("close"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
~~~
- barrierDismissible에 대한 설정을 하지 않으면 Dialog 창 외부를 눌렀을 때 자동으로 pop 됨
- barrierDismissible: false를 통해 외부를 눌렀을 때도 pop 되지 않게 함
- title과 content로 Dialog 창 내부에 글을 띄움
- content에 버튼이나 TextField, 슬라이더와 같은 위젯을 넣는것도 가능
- actions도 위젯을 삽입할 수 있는데 삽입된 위젯은 우측 하단에 위치하게 되며 보통 버튼을 사용함
- 'OK'와 'close'를 통해 Dialog 창을 끌 수 있음