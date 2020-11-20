# flutter_Build_APK

- 안드로이드 스튜디오로 APK 파일을 생성하는 방법입니다.
- debug 파일은 어플을 직접 연결해 실행하면 생성되며, Build APK를 할 시 기본적으로 release 파일이 생성됩니다.
- debug와 release 모드를 나누는 이유는 다음과 같습니다.
   - debug 모드의 경우엔 파일의 크기가 크지만, 빠른 개발과 실행 사이클에 최적화 되있고, 시뮬레이터 및 에뮬레이터에서 가동이 가능하며 flutter의 최대 장점 중 하나인 hot reload 기능이 사용가능해집니다.
   - release 모드의 경우엔 앱을 최대한 최적화해 사이즈를 작게 만들어 배포할 때 유리해집니다.
- 여기서 중요한 점은 debug와 release 모드의 기능 차이가 있기 때문에 그로 인해 debug 모드로 빌드했을 때는 잘 실행 되던 것이 release 모드로 빌드했을 때는 실행되지 않는 경우가 생깁니다.
- 이를 위해 사소한 디자인 변화가 아닌 기능적인 커다란 변화 및 추가가 생긴다면 debug 모드로 체크 한 후 release 모드로 한 번 더 체크 하는 것을 권장합니다.

-------------------------

## Build
![1](https://user-images.githubusercontent.com/46275549/96656920-d0356f00-137b-11eb-97c1-749d97a5f2d3.png)
![2](https://user-images.githubusercontent.com/46275549/96656922-d0ce0580-137b-11eb-89b8-146c83c4be05.png)

- APK 파일을 빌드하는 방법입니다.
- 상단의 메뉴 중 "Build"를 선택한 뒤, "Flutter"를 선택, "Build APK"를 선택해 Build를 진행합니다.
- 두 번째 사진과 같이 "Process finished with exit code 0"가 마지막 줄에 출력되면 잘 된것입니다.

## Location
![3](https://user-images.githubusercontent.com/46275549/96656923-d1669c00-137b-11eb-9e7b-53ce11bba263.png)
![4](https://user-images.githubusercontent.com/46275549/96656924-d1669c00-137b-11eb-8539-b8f7e0a8d1e2.png)
![5](https://user-images.githubusercontent.com/46275549/96656926-d1ff3280-137b-11eb-9f0c-77c8b27bab5a.png)
![6](https://user-images.githubusercontent.com/46275549/96656927-d1ff3280-137b-11eb-91dc-3b427a21b8ce.png)
![7](https://user-images.githubusercontent.com/46275549/96656929-d297c900-137b-11eb-8c20-ec8fb6b7348c.png)

- APK 파일의 위치입니다.
- 프로젝트 폴더 내부에 build -> app -> outputs -> flutter-apk에 있는 app-release.apk 파일을 사용합니다.
- "flutter 프로젝트 폴더 위치"\build\app\outputs\flutter-apk\app-release.apk