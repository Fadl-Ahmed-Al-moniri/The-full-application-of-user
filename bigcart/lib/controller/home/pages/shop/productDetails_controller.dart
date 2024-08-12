import 'package:bigcart/controller/home/pages/shop/shop_controller.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDataControllerImp extends GetxController {
  TextEditingController total = TextEditingController();
  bool isLoding = true;
  final product = Product(
          name: 'عنب رازقي',
          image: AppImageAsset.grapesWhite,
          description:
              "'قطوف عنب اخضر بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم والبشرة. السعرات الحرارية: 76.72 سعرة حرارية لكلك 100 جرام',",
          harvestDate: r'12\4\2000',
          calories: 67,
          price: 1000,
          rating: 4)
      .obs;

  int quantity = 1;
  double ratinng = 1;

  void incrementQuantity() {
    quantity++;
    update();
  }

  setratinng(double r) {
    ratinng = r;
    update();
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
