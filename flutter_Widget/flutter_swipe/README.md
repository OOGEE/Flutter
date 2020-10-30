# flutter_swipe

- 사진을 좌우, 상하로 스와이프해 한 공간에서 여러가지 사진을 보여줄 수 있는 위젯입니다.
- "flutter_swiper"라는 패키지를 사용해 제작했습니다.
- 패키지 사용 방법은 [flutter_Package](https://github.com/OOGEE/Flutter/tree/master/flutter_Package)를 통해 확인할 수 있습니다.
- 이미지 사용 방법은 [flutter_image](https://github.com/OOGEE/Flutter/tree/master/flutter_Widget/flutter_image)를 통해 확인할 수 있습니다.

![Screen_Recording_20201030-105710_1](https://user-images.githubusercontent.com/46275549/97651233-d96ebc00-1a9e-11eb-9096-8a489e5d6b9b.gif)

## pubspec.yaml
~~~dart
flutter_swiper: ^1.1.6
~~~
- flutter_swiper 패키지 사용

## swiper
~~~dart
Swiper(
  pagination: SwiperPagination(alignment: Alignment.bottomCenter),
  control: new SwiperControl(),
  autoplay: true,
  itemCount: imgList.length,
  itemBuilder: (BuildContext context, int index) {
    return Image.asset(imgList[index], fit: BoxFit.fill);
  },
  scrollDirection: Axis.horizontal,
),
~~~
- pagination을 사용하면 이미지 개수만큼 원이 생성되고, 현재 사진의 위치에 색이 변해 현재 몇번째인지 확인 가능
- alignment로 위치 지정 가능
- control을 사용해 좌우 혹은 상하로 화살표를 탭해 이동할 수 있음
- autoplay를 사용해 시간이 지남에 따라 자동으로 한 칸씩 스와이프 되게 만듬
- autoplay는 기본적으로 3초이며, duration을 사용해 시간을 변경하는 것이 가능
- itemCount는 이미지의 갯수
- itemBuilder로 이미지를 불러옴
- scrollDirection으로 좌우로 스와이프할지 상하로 스와이프할지 결정 가능(horizontal은 좌우, vertical은 상하)