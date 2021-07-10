import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagesPath=[
        'images/day01.png',
        'images/day02.png',
        'images/day03.png',
        'images/day04.png',
        'images/day05.png',
        ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
              child: CarouselSlider(
                options: CarouselOptions(autoPlay: true),
                items: _imagesPath.map((imagePath) {
                  return Builder(builder: (context){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      child: Image.asset(imagePath),
                    );
                  });
                }).toList()),
            )
            )),
    );
  }
}
