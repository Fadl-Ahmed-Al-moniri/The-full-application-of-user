import 'package:bigcart/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class OrderController extends GetxController {
  onSelectStausOrder();
}

class OrderControllerImp extends OrderController {
  final String titleAppBar = "قائمة الطلبات ";
  List orderIsWait = [
    32,
    43,
    12,
    1,
  ];
  List orderIsDone = [
    44,
    1,
    2,
    7,
    98,
  ];
  bool isSelected = true;
  @override
  onSelectStausOrder() {
    isSelected = !isSelected;
    update();
  }

  cancelOrder(int index) {
    orderIsWait.removeAt(index);
    update();
  }

  clickOnNext() {
    Get.toNamed(AppRout.billDetailsPage);
  }
}
