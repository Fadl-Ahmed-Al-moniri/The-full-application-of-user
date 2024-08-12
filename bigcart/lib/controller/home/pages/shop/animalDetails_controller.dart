import 'package:bigcart/controller/home/pages/shop/shop_controller.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/animle_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimaldetailsControllerImp extends GetxController {
  TextEditingController total = TextEditingController();
  bool isLoding = true;
  final animleModel = AnimleModel(
          name: 'خروف كبير',
          image: AppImageAsset.sheep,
          description: 'مزرعة ارض الجنتين',
          harvestDate: r'12\4\2000',
          price: 1000,
          rating: 4,
          total: 1)
      .obs;

  int quantity = 1;
  double ratinng = 1;
  late num totalPrice = 0;

  void incrementQuantity() {
    quantity++;
    update();
  }

  setratinng(double r) {
    ratinng = r;
    update();
  }

  @override
  void onInit() {
    // tree
    super.onInit();
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
      update();
    }
  }

  void addToCart(
      {required String name,
      required String image,
      required dynamic price,
      required dynamic count}) {
    try {
      ShoppingControllerImp controller = Get.put(ShoppingControllerImp());
      controller.ordersData.add(
        {
          'name': name,
          'image': image,
          'price': price,
          'count': count,
        },
      );
      Get.defaultDialog(title: 'Alart', middleText: 'Success');
      Get.offNamed(AppRout.homepage);
    } catch (e) {
      Get.defaultDialog(title: 'Alart', middleText: 'Something went wrong');
    }
  }

  void addToFavorites() {
    // منطق إضافة المنتج إلى المفضلات
  }
}
