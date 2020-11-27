# flutter_drawer

- 좌측 상단의 버튼을 클릭하면 화면 왼쪽에 슬라이드 메뉴가 팝업되는 drawer를 사용한 예제입니다.
- 버튼을 누르거나 팝업 화면 바깥을 누르게 되면 화면이 사라집니다.
- drawer는 하나의 새로운 화면을 생성하는 개념으로 내부에 위젯을 자유롭게 배치할 수 있습니다.

![Screen_Recording_20201127-095357_1](https://user-images.githubusercontent.com/46275549/100400229-1bd4ea00-3099-11eb-9a8b-88eab6ee5a6f.gif)

## Drawer
~~~dart
drawer: Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        child: Text(
          'Drawer Head',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
      ),
      FlatButton(
        child: Row(
          children: [Icon(Icons.access_alarm), Text("   Alarm")],
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      FlatButton(
        child: Row(
          children: [Icon(Icons.account_box_rounded), Text("   Account")],
        ),
        onPressed: () {
        Navigator.pop(context);
        },
      ),
      Divider(),
      FlatButton(
        child: Row(
          children: [Icon(Icons.add_a_photo_rounded), Text("   Photo")],
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      FlatButton(
        child: Row(
          children: [Icon(Icons.add_call), Text("   Call")],
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
),
~~~
- drawer는 AppBar와 body처럼 Scaffold 바로 밑에서 사용
- DrawerHeader는 Drawer의 일정 윗 부분을 차지하는 공간
- 본 예제에서는 ListView를 사용했으며, children 밑에 자유롭게 위젯을 배치 가능