import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/helper.dart';

Widget HomeComponentFour({required context, required controller}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Column(
    children: [
      // Text('Recommendation', style: titletext, textAlign: TextAlign.left,),
      SizedBox(height: 20,),
      Obx(() => Container(
        height: height * 0.36,
        margin: EdgeInsets.only(left: width * 0.05),
        child: ListView.builder(
          itemCount: controller.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            var product = controller[index];

            return Container(
              width: width * 0.37,
              margin: EdgeInsets.only(right: width * 0.025, bottom: height * 0.01),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 15,),
                      Image.asset(product.image, width : width * 0.3),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: width * 0.055,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  product.name,
                                  style: moneyMiniText,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: height * 0.04,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: width * 0.015,
                      vertical: height * 0.01,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button press logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Icon(Icons.shopping_cart,
                          size: 20, color: secondaryColor),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )),
    ],
  );
}
