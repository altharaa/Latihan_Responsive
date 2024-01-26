import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/Mobile/componentfour.dart';
import 'package:latihanresponsf/Mobile/componentone.dart';
import 'package:latihanresponsf/Mobile/componentsearch.dart';
import 'package:latihanresponsf/Mobile/componentthree.dart';
import 'package:latihanresponsf/Mobile/componenttwo.dart';
import 'package:latihanresponsf/Tablet/component1.dart';
import 'package:latihanresponsf/Tablet/component2.dart';
import 'package:latihanresponsf/Tablet/component3.dart';
import 'package:latihanresponsf/Tablet/component4.dart';
import 'package:latihanresponsf/helper.dart';
import 'package:latihanresponsf/kalung.dart';
import 'package:latihanresponsf/productmodel.dart';
import 'LayoutController.dart';

class MyHomePage extends StatelessWidget {
  final LayoutController layoutController = Get.put(LayoutController());
  final KalungController kalungController = Get.put(KalungController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Obx(
            () => layoutController.isMobileLayout.value
            ? buildMobileLayout(context)
            : buildTabletLayout(context),
      ),
    );
  }

  Widget buildMobileLayout(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.1),
          child: CustomAppBar()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CatalogComponentOne(),
            HomeComponentOne(),
            HomeComponentTwo(),
            SizedBox(height: 20,),
            HomeComponentFour(context: context, controller: kalungController.kalung),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabletLayout(BuildContext context) {
    // return Scaffold(
    //   body: GridViewWidgetTablet(),
    // );
    double screenHeight = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.1),
          child: HomeComponentOneTablet()),
    body: SingleChildScrollView(
      child: Column(
        children: [
          HomeComponentTwoTablet(),
          HomeComponentThreeTablet(),
          GridViewWidgetTablet()
        ],
      ),
    ),
    );
  }
}