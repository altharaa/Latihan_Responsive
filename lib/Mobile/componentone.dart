import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/helper.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return AppBar(
      elevation: 1,
      toolbarHeight: height * 0.1,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width * 0.3,
              child: Image.asset(
                logo,
              ),
            ),
            /// Icon Cart
            InkWell(
              onTap: () {
              },
              child: Container(
                width: width * 0.1,
                height: width * 0.1,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: secondaryColor,
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
