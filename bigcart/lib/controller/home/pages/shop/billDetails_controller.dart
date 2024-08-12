import 'package:bigcart/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class BillController extends GetxController {
  changePaymentMethod(newValue);
  changeAdreses(Value);
}

class BillControllerImp extends BillController {
  String? selectedPayment;
  String? selectedAddress;
  List billData = <Map<String, dynamic>>[
    {
      "price": 500,
      "name": "موز",
      "count": 5,
    },
    {
      "price": 1500,
      "name": "افكادوا",
      "count": 2,
    },
    {
      "price": 1000,
      "name": "تفاح احمر ",
      "count": 1,
    },
    {
      "price": 1000,
      "name": "بيض",
      "count": 2,
    },
  ];

  String val = 'الى:........................';
  String val2 = 'طريقة الدفع';

  List payment_method = [
    'كريمي',
    'كاش',
  ];
  List addreses = [
    'هايل-جوارملاك مول',
    'حده-الرويشان  ',
    'هايل-جوارملاك مول',
    'حده-الرويشان  ',
  ];
  @override
  void onInit() {
    super.onInit();
  }

  setvalue(dynamic value) {
    val = value;
    update();
  }

  setvalue2(dynamic value) {
    val2 = value;
    update();
  }

  @override
  changePaymentMethod(newValue) {
    selectedPayment = newValue!;
    update();
  }

  @override
  changeAdreses(Value) {
    selectedAddress = Value!;
    update();
  }

  goToConfirm() {
    Get.toNamed(AppRout.orderPage);
  }
}
