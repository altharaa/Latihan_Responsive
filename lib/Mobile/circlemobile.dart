import 'package:flutter/cupertino.dart';
import 'package:latihanresponsf/helper.dart';

Widget CategoriesCircle2({
  required context,
  required String image,
  required String textValue,
}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    width: width * 0.2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.125,
          height: width * 0.125,
          decoration: BoxDecoration(
            border: Border.all(
              color: primaryColor, // Replace with your desired border color
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(image),
          ),
        ),
        SizedBox(height: height * 0.01),
        Text(textValue, style: moneyMiniText),
      ],
    ),
  );
}
