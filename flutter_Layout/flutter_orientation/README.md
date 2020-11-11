# flutter_orientation

- 버튼을 통해 화면을 전환할 수 있는 기능을 구현했습니다.
- 화면을 자신이 원하는 방향으로 고정시킬 수 있습니다.
- 본 예제에서는 화면을 한 방향으로 고정했지만, 변수를 여러개 넣어 사용하는 것이 가능합니다.

![Screen_Recording_20201111-103431_One UI Home_1](https://user-images.githubusercontent.com/46275549/98754452-15dcd900-240a-11eb-8c53-84664cdc3d43.gif)

## import
~~~dart
import 'package:flutter/services.dart';
~~~
- 기본 라이브러리인 service를 사용

## SystemChrome.setPreferredOrientations([...]);
~~~dart
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
~~~
- 기본 사용 방향인 세로 방향으로 화면을 전환

~~~dart
SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
~~~
- 화면을 왼쪽, 가로 방향으로 전환

~~~dart
SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
~~~
- 화면을 오른쪽, 가로 방향으로 전환
