// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/animle_model.dart';
import 'package:bigcart/data/model/itemOfSearch_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeofanimlsController extends GetxController {
  
  late String titlename;
  List<AnimleModel> animlList = [
    AnimleModel(
          name: 'خروف كبير',
          image: AppImageAsset.sheep,
          description: 'مزرعة ارض الجنتين',
          harvestDate: r'12\4\2000',
          price: 1000,
          rating: 4,
          total: 1),
    
    AnimleModel(
          name: "ماعز كبير",
          image: AppImageAsset.sheep,
          description: 'مزرعة ارض الجنتين',
          harvestDate: r'12\4\2000',
          price: 1000,
          rating: 4,
          total: 1),
    AnimleModel(
          name: ' عجل كبير',
          image: AppImageAsset.cow,
          description: 'مزرعة ارض الجنتين',
          harvestDate: r'12\4\2000',
          price: 1000,
          rating: 4,
          total: 1),
    
  ];
  @override
  void onInit() {
    titlename = Get.arguments;
    super.onInit();
  }

  onClickCard() {
    if (isloding == true) {
      Get.toNamed(
        AppRout.animalDetailsPage,
      );
    } else {
      Get.defaultDialog(
          title: "",
          middleText: "Phone or email existing",
          content: Center(
            child: CircularProgressIndicator(
              color: AppColor.Gold,
            ),
          ));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  void addToCart() {
    // منطق إضافة المنتج إلى السلة (مثال: استخدام Provider أو GetStorage)
  }

  void addToFavorites() {
    // منطق إضافة المنتج إلى المفضلات
  }

  bool isloding = true;
}
