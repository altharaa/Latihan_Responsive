import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/helper.dart';

class HomeComponentOneTablet extends StatelessWidget {
  const HomeComponentOneTablet({super.key});

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
              width: width * 0.15,
              child: Image.asset(
                logo,
              ),
            ),
            Container(
              width: width * 0.5,
              height: height * 0.05,
              margin: EdgeInsets.symmetric(horizontal: width * 0.01, vertical: height * 0.01),
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFFD9D9D9),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: primaryColor),
                  SizedBox(width: width * 0.020),
                  Text(
                    "Search...",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        )
                    ),
                  )
                ],
              ),
            ),
            /// Icon Cart
            InkWell(
              onTap: () {
              },
              child: Container(
                width: width * 0.04,
                height: width * 0.04,
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
