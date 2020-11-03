# flutter_slider

- 지정한 범위 내에 값을 좌우로 스와이프하여 고를 수 있습니다.
- 최소값과 최대값의 범위를 직접 입력할 수 있고, 값의 단계를 나누는 것도 가능합니다.
- 슬라이더를 눌렀을 때 현재 값이 무엇인지 보여줍니다.

![Screen_Recording_20201102-091425_One UI Home_1](https://user-images.githubusercontent.com/46275549/97819460-ffd56700-1ceb-11eb-882c-af8de32673dc.gif)

## Slider
~~~dart
Slider(
  min: 0,
  max: 100,
  divisions: 10,
  value: slider_value,
  label: "$slider_value",
  onChanged: (value) {
    setState(() {
      slider_value = value;
    });
  },
),
~~~
- min, max를 사용해 최소값과 최대값의 범위를 지정
- divisions를 사용해 값을 (입력한 값 + 1) 단계로 나눔 (10은 0에서 100까지 11단계로 나눔)
- value에 들어가는 변수 값은 double이여야 하며 초기 값을 설정해 줘야 함(그렇지 않으면 에러)
- label을 사용해 슬라이더를 누르거나 옮겼을 때 값을 보여 줌
- onChanged로 값이 변했을 때 slider_value에 이를 반영