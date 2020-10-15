# flutter_gradient_plus

- Container의 decoration 기능 중 하나인 gradient 기능을 구현했습니다.
- 색상 그라데이션을 이용해 디자인을 꾸밀 수 있습니다.
- 시작점과 끝점을 사용해 그라데이션을 표현하는 LinearGradient와 일정 포인트를 중심으로 그라데이션을 표현하는 RadialGradient 2가지를 구현했습니다.
- 기존의 [flutter_gradient](https://github.com/OOGEE/Flutter/tree/master/flutter_Layout/flutter_gradient)에 tileMode 기능을 활용해 디자인을 변경한 것이기 때문에 수정한 부분만 설명했습니다.

<div>
<img height="800" src="https://user-images.githubusercontent.com/46275549/96059613-6293c980-0ec9-11eb-9483-54557e7b7478.jpg">
<img height="800" src="https://user-images.githubusercontent.com/46275549/96059617-63c4f680-0ec9-11eb-9afd-9cc9d4dcae30.jpg">
</div

## tileMode
~~~dart
begin: Alignment(x, y),
end: Alignment(x, y),
~~~
- begin의 x, y와 end의 x, y의 차가 작을수록 더 많이 반복된 형태를 보여 줌
- begin의 x, y와 end의 x, y의 차가 같더라도 값의 차이에 따라 출력되는 형식은 다름

~~~dart
tileMode: TileMode.repeated
~~~
- 기존의 gradient를 단면을 자른 듯이 나눠 반복해 보여주는 기능을 추가

~~~dart
tileMode: TileMode.mirror
~~~
- 기존의 gradient를 부드럽게 이어서 반복해 보여주는 기능 추가