import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/Mobile/circlemobile.dart';
import 'package:latihanresponsf/helper.dart';

class HomeComponentTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
              },
              child: CategoriesCircle2(
                context: context,
                image: icon1,
                textValue: "Anting",
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: CategoriesCircle2(
                context: context,
                image: icon2,
                textValue: "Cincin",
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: CategoriesCircle2(
                context: context,
                image: icon3,
                textValue: "Gelang",
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: CategoriesCircle2(
                context: context,
                image: icon4,
                textValue: "Kalung",
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: CategoriesCircle2(
                context: context,
                image: icon5,
                textValue: "Liontin",
              ),
            ),
          ],
        ),
      ],
    );
  }
}