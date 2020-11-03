# flutter_app_bar

- 앱바의 디자인을 지정하는 예제입니다.
- 앱바에 들어가는 텍스트와 디자인, 가운데 정렬이 가능합니다.
- 앱바의 색을 바꾸는 것이 가능합니다.
- 앱바의 왼쪽에 leading, 오른쪽에 actions로 아이콘 버튼 배치가 가능합니다.
- 각각의 버튼에 디자인 적용이 가능합니다.

<div>
<img height="800" src="https://user-images.githubusercontent.com/46275549/97934108-0af5c900-1db8-11eb-89c5-0c851a9abb78.jpg">
</div>

## title
~~~dart
title: Text(
  'AppBar',
  style: TextStyle(fontSize: 30),
),
centerTitle: true,
~~~
- title에 Text를 사용해 원하는 글씨를 입력할 수 있으며, 서식도 지정 가능
- centerTitle을 사용해 title 가운데 정렬

## backgroundColor
~~~dart
backgroundColor: Colors.grey,
~~~
- 앱바의 색을 지정

## leading
~~~dart
leading: IconButton(
  icon: Icon(
    Icons.menu,
    size: 30,
    color: Colors.amberAccent,
  ),
  onPressed: () {},
),
~~~
- leading으로 앱바의 왼쪽에 아이콘 버튼 배치
- 아이콘의 디자인 적용 가능
- onPressed를 통해 버튼을 눌렀을 때 원하는 기능 삽입 가능

## actions
~~~dart
actions: [
  IconButton(
    icon: Icon(
      Icons.search,
      size: 30,
      color: Colors.amberAccent,
    ),
    onPressed: () {},
  ),
  IconButton(
    icon: Icon(
      Icons.more_vert,
      size: 25,
      color: Colors.black,
    ),
    onPressed: () {},
  ),
],
~~~
- actions로 앱바의 오른쪽에 아이콘 버튼 배치
- 각각의 아이콘에 디자인 적용 가능
- onPressed를 통해 버튼을 눌렀을 때 원하는 기능 삽입 가능