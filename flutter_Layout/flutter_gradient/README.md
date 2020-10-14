# flutter_gradient

- Container의 decoration 기능 중 하나인 gradient 기능을 구현했습니다.
- 색상 그라데이션을 이용해 디자인을 꾸밀 수 있습니다.
- 시작점과 끝점을 사용해 그라데이션을 표현하는 LinearGradient와 일정 포인트를 중심으로 그라데이션을 표현하는 RadialGradient 2가지를 구현했습니다.

## LinearGradient
~~~dart
Container(
  width: MediaQuery.of(context).size.width,
  height: 300,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [0.2, 0.5, 0.8],
      colors: [
        const Color(0xFFFF0000),
        const Color(0xFF00FF00),
        const Color(0xFF0000FF),
      ],
    ),
  ),
),
~~~
- begin은 시작점으로, colors 중 첫 번째 색이 표현됨
- end는 종점으로, colors 중 마지막 색이 표현됨
- 색을 지정하는 colors의 개수는 제한이 없음
- stops는 각 색들에게 가중치를 부여함(0 ~ 1.0 / 색과 개수가 일치해야 함)

## RadialGradient
~~~dart
Container(
  width: MediaQuery.of(context).size.width,
  height: 300,
  decoration: BoxDecoration(
    gradient: RadialGradient(
      center: Alignment(0.1, 0.1),
      stops: [0.1, 1],
      colors: [
        const Color(0xFFDDDD00),
        const Color(0xFFAA00AA),
      ],
    ),
  ),
),
~~~
- center는 시작점으로, colors 중 첫 번째 색이 표현됨
- Alignment(x, y)로 중심 점의 위치를 지정할 수 있음
- stops는 각 색들에게 가중치를 부여함(0 ~ 1.0 / 색과 개수가 일치해야 함)
- 색을 지정하는 colors의 개수는 제한이 없음
