import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/helper.dart';
import 'package:latihanresponsf/kalung.dart';
import 'package:latihanresponsf/productmodel.dart';

class GridViewWidgetTablet extends StatelessWidget {
  GridViewWidgetTablet({super.key});
  final KalungController kalungController = Get.put(KalungController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return
      Obx(
            () => Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
          // width: double.infinity,
          height: height,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.87
              ),
              itemCount: kalungController.kalung.length,
              itemBuilder: (context, index) {
                Product product = kalungController.kalung[index];
                return Container(
                  // margin: EdgeInsets.only(bottom: height * 0.001),
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
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: width * 0.015,
                          vertical: height * 0.01,
                        ),
                        child: Column(
                          children: [
                            Image.asset(product.image, fit: BoxFit.fitHeight),
                            SizedBox(height: 20,),
                            Container(
                              height: height * 0.05,
                              width: width * 0.5,
                              margin: EdgeInsets.symmetric(
                                horizontal: width * 0.015,
                                vertical: height * 0.001,
                              ),
                              child: ElevatedButton(
                                onPressed: () {
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
                      ),
                    ],
                  ),
                );
              },
          ),
        ),
            ),
      );

    // );
  }
}
