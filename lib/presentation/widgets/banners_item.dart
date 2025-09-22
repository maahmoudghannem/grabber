import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannersItem extends StatelessWidget {
  const BannersItem({super.key});

  final List<String> banner = const [
    "assets/images/banners/Slider1.png",
    "assets/images/banners/Slider2.png",
    "assets/images/banners/Slider3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banner.length,
      itemBuilder: (context, index, pageViewIndex) =>
          SizedBox(child: Image.asset(banner[index])),
      options: CarouselOptions(
        height: 222,
        aspectRatio: 1.2,
        viewportFraction: 0.8,
        autoPlay: true,
        // autoPlayAnimationDuration: Duration(microseconds: 500),
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
      ),
    );
  }
}
