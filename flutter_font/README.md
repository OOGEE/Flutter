# flutter_font

- 외부 폰트를 적용하는 방법입니다.

<div>
<img height="800" src="https://user-images.githubusercontent.com/46275549/100557318-b9275c80-32eb-11eb-84ab-1ef63e944d69.jpg"/>
</div>

## 폴더 생성 및 파일 삽입

![1](https://user-images.githubusercontent.com/46275549/100557314-b75d9900-32eb-11eb-8296-84f64ca2c016.png)
![2](https://user-images.githubusercontent.com/46275549/100557315-b7f62f80-32eb-11eb-830f-3c8071440187.png)

- 위 사진과 같이 프로젝트 폴더에 fonts라는 폴더 제작
- 폴더 내부에 폰트 파일 삽입
- 네이버에서 제공하는 무료 폰트인 마루부리 폰트를 사용했음

## pubspec.yaml

![3](https://user-images.githubusercontent.com/46275549/100557316-b88ec600-32eb-11eb-88fb-aed4d61b23a5.png)
![4](https://user-images.githubusercontent.com/46275549/100557317-b88ec600-32eb-11eb-8ca3-10c40de80127.png)

- 위의 사진과 같이 맨 아래에 주석처리 되어있는 부분을 아래의 사진과 같이 변경

## text
~~~dart
Text(
  "마루 부리체",
  style: TextStyle(fontFamily: 'MaruBuri', fontSize: 30),
),
~~~
- Text에 외부 Font 스타일을 적용