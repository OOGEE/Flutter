# flutter_use_image

- 원하는 이미지를 사용하는 방법입니다.

![Screenshot_20201022-113114](https://user-images.githubusercontent.com/46275549/96817399-34c6fb80-145a-11eb-9803-523a85e702cf.jpg)

-------------------------

## images 폴더

![1](https://user-images.githubusercontent.com/46275549/96658037-96b23300-137e-11eb-9b4c-2dabb554357a.png)
- 프로젝트 폴더 위치에 images라는 이름의 새 폴더를 생성해줍니다.
- images라는 폴더는 기존에 생성되있지 않으며, 폴더 이름을 다른 것으로 해도 상관 없습니다.

![2](https://user-images.githubusercontent.com/46275549/96816368-532bf780-1458-11eb-8cec-99343a9858bb.png)
- 자신이 생성한 폴더 내부에 자신이 원하는 사진을 넣습니다.

## pubspec.yaml
![3](https://user-images.githubusercontent.com/46275549/96816378-53c48e00-1458-11eb-83e6-97dded787642.png)
- 안드로이드 스튜디오에서 위 사진과 같은 위치에 있는 pubspec.yaml 파일을 더블 클릭해 열어줍니다.

![4](https://user-images.githubusercontent.com/46275549/96658042-97e36000-137e-11eb-8d42-e7f8766cb372.png)
- 47번째 라인부터 50번째 라인까지 위 사진과 같은 상태가 되있는 것을 확인할 수 있습니다.

![5](https://user-images.githubusercontent.com/46275549/96658045-97e36000-137e-11eb-82af-bbf1ad4b7ca8.png)
- 다음과 같이 "assets:" 부분의 주석(#)을 제거해줍니다.
- 위 사진의 예시와 같이 - 자신이 생성한 폴더 이름/이미지 이름.확장자 이름과 같은 형식으로 선언을 해줍니다.
- 들여쓰기 위치를 정확히 같게 하지 않으면 오류가 납니다.

## use image
~~~dart
Container(
  child: Image.asset(
    'images/seoul.png',
    width: 400,
    height: 800,
    alignment: Alignment.center,
  ),
),
~~~
- child에 Image.asset을 사용해 이미지를 위젯에 덧씌워 사용할 수 있습니다.
- '자신이 생성한 폴더 이름/이미지 이름.확장자 이름'으로 이미지를 사용합니다.
- width와 height를 사용해 가로와 세로 길이를 고정적으로 줄 수 있습니다.
- alignment를 사용해 위젯의 배치를 지정할 수 있습니다.