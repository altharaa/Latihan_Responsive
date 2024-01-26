import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/helper.dart';

class HomeComponentTwoTablet extends StatelessWidget {
  const HomeComponentTwoTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;

    Widget carouselSlider = Container(
        width: mediaQuery.width * 0.6,
        height: mediaQuery.height * 0.5,
        child: Image.asset(banner,
          fit: BoxFit.cover,)
    );

    Widget secondCarouselSlider = Container(
        height: mediaQuery.height * 0.5, // Adjust width as needed
        child: Image.asset(promo)
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          carouselSlider,
          secondCarouselSlider,
        ],
      ),
    );
  }
}
