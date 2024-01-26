import 'package:get/get.dart';

class Product {
  late String id;
  late String image;
  late String name;

  Product(String id, String image, String name){
    this.id = id;
    this.image = image;
    this.name = name;
  }
}