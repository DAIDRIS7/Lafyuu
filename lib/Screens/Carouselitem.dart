import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList;

  CarouselWithDotsPage({required this.imgList});

  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/image1.png",
                      fit: BoxFit.cover,
                      width: 300,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xc8862525),
                              Color(0x009a2525),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Column(children: [
                          Text(
                            'Flash Sale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Anything ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        .toList();

    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              // aspectRatio: 2.0,
              height: 150,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _current == index ? Color(0xe6b41111) : Color(0x66921919),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
