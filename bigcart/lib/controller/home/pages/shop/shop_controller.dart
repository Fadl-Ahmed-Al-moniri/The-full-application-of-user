import 'package:bigcart/controller/home/pages/shop/animalDetails_controller.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/shopCart_model.dart';
import 'package:get/get.dart';

abstract class ShoppingController extends GetxController {
  deleteFromTrash(int index);
  encrement(int index);
  decrement(int index);
}

class ShoppingControllerImp extends ShoppingController {
  late num totalPrice = 0;
  // AnimaldetailsControllerImp controller = Get.r(AnimaldetailsControllerImp());

  List ordersData = <Map<String, dynamic>>[
    {
      "image": AppImageAsset.banana,
      "price": 500,
      "name": "موز",
      "count": 5,
    },
    {
      "image": AppImageAsset.avocado,
      "price": 1500,
      "name": "افكادوا",
      "count": 2,
    },
    {
      "image": AppImageAsset.apple,
      "price": 1000,
      "name": "تفاح احمر ",
      "count": 1,
    },
    {
      "image": AppImageAsset.egg,
      "price": 1000,
      "name": "بيض",
      "count": 2,
    },
  ];

  @override
  decrement(int index) {
    for (int i = 0; i <= ordersData.length - 1; i++) {
      if (i == index) {
        if (ordersData[i]["count"] >= 1) {
          ordersData[i]["count"]--;
          sumAllPrice();
          update();
        }
      }
    }
  }

  @override
  deleteFromTrash(int index) {
    ordersData.removeAt(index);
    sumAllPrice();
    update();
  }

  @override
  encrement(int index) {
    for (int i = 0; i <= ordersData.length - 1; i++) {
      if (i == index) {
        ordersData[i]["count"]++;
        sumAllPrice();
        update();
      }
    }
  }

  sumAllPrice() {
    num sum = 0;
    for (int i = 0; i <= ordersData.length - 1; i++) {
      sum += ordersData[i]["price"] * ordersData[i]["count"];
    }
    totalPrice = sum;
    update();
  }

  @override
  void onInit() {
    sumAllPrice();
    super.onInit();
  }

  goTohome() {
    Get.toNamed(AppRout.homepage);
  }

  goToConfiermpage() {
    Get.toNamed(AppRout.billDetailsConfirimPage);
  }
}
