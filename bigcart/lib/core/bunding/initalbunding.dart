import 'package:bigcart/core/class/crud.dart';
import 'package:get/get.dart';


class InitalBunding extends Bindings {

  @override
  void dependencies() {
    Get.put(Crud());
  }
}
