import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

final List<String> imgList = [
  'images/1.jpg',
  'images/2.jpg',
  'images/3.jpg',
  'images/4.jpg',
  'images/5.jpg',
];

class MainPage extends StatefulWidget {
  @override
  Main createState() => new Main();
}

class Main extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("swiper"),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Swiper(
            pagination: SwiperPagination(alignment: Alignment.bottomCenter),
            control: new SwiperControl(),
            autoplay: true,
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(imgList[index], fit: BoxFit.fill);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}