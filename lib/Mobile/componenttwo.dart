import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/helper.dart';

class HomeComponentOne extends StatelessWidget {
  const HomeComponentOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 0.7,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,
          pageSnapping: true,
          autoPlayCurve: Curves.linearToEaseOut,
          autoPlayAnimationDuration: Duration(seconds: 3),
        ),
        itemBuilder: (context, index, realIndex) => ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
                banner
            ),
          ),
        )
    );

  }
}
