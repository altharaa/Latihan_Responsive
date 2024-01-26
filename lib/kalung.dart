import 'package:get/get.dart';
import 'package:latihanresponsf/productmodel.dart';
import 'package:latihanresponsf/helper.dart';

class KalungController extends GetxController {
  RxList<Product> kalung = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product kalung1 = Product('k1', kalungsa, 'Kalung Emas Cassano');
    Product kalung2 = Product('k2', kalungdu, 'Kalung Emas Gliter Bola');
    Product kalung3 = Product('k3', kalungti, 'Kalung Emas Round');
    Product kalung4 = Product('k4', kalungpa, 'Kalung Emas Stela');
    Product kalung5 = Product('k5', kalungma, 'Kalung Emas Variasi');
    Product kalung6 = Product('k6', kalungnam, 'Kalung Emas Veeline');

    kalung.addAll([kalung1, kalung2, kalung3, kalung4, kalung5, kalung6]);
  }
}
