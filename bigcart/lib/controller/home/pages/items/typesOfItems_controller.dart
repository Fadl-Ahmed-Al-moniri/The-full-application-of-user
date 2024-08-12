// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/itemOfSearch_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypesofitemsControllerImp extends GetxController {
  
  late String titlename;
  List<Itemofsearch> onItemofsearchList = [
    Itemofsearch(
      title: "عنب خارجي",
      suptitle: '4000 الف ريال ',
      image: AppImageAsset.grapes,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب عاصمي",
      suptitle: ' 5000 الف ريال ',
      image: AppImageAsset.grapesRed,
      onTap: (index) {},
      isFavorite: true,
    ),
    Itemofsearch(
      title: 'عنب رازقي',
      suptitle: '3000 الف ريال ',
      image: AppImageAsset.grapesWhite,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب خارجي",
      suptitle: '4000 الف ريال ',
      image: AppImageAsset.grapes,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب عاصمي",
      suptitle: ' 5000 الف ريال ',
      image: AppImageAsset.grapesRed,
      onTap: (index) {},
      isFavorite: true,
    ),
    Itemofsearch(
      title: 'عنب رازقي',
      suptitle: '3000 الف ريال ',
      image: AppImageAsset.grapesWhite,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب خارجي",
      suptitle: '4000 الف ريال ',
      image: AppImageAsset.grapes,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب عاصمي",
      suptitle: ' 5000 الف ريال ',
      image: AppImageAsset.grapesRed,
      onTap: (index) {},
      isFavorite: true,
    ),
    Itemofsearch(
      title: 'عنب رازقي',
      suptitle: '3000 الف ريال ',
      image: AppImageAsset.grapesWhite,
      onTap: (index) {},
      isFavorite: false,
    ),
  ];
  @override
  void onInit() {
    titlename = Get.arguments;
    super.onInit();
  }

  onClickCard() {
    if (isloding == true) {
      Get.toNamed(
        AppRout.productDetailsPage,
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
