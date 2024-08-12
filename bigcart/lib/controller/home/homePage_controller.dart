// ignore_for_file: prefer_final_fields

import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/cradItem_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomepageController extends GetxController {
  search();
  goToProfile();
  goBackPage();
  goToDrawar();
  filterData();
  clickMoreItem(int index, String name);
}

class HomepageControllerImp extends HomepageController {
  var isExpanded = false.obs;

  void toggleExpansion() {
    isExpanded.value = !isExpanded.value;
  }

  @override
  void onInit() {}

  var isSuggestionsPageActive = false.obs;

  List itemofFilter_list = ['موسمية و غير موسمية', 'المزارع'];
  TextEditingController searchKye = TextEditingController();

  List searchItems = [
    'موز',
    'طماط',
    'بقرة',
    'تفاح أخضر ',
    'بن يمني',
  ];
  List suggestionItem = [
    'دجاد بلدي',
    'افوكادو',
    'بطاط',
    'دقيق ابيض',
  ];
  List<Craditem> onCraditemList = [
    Craditem(title: "فواكهة", image: AppImageAsset.fruit),
    Craditem(title: 'خضراوات', image: AppImageAsset.adsImage),
    Craditem(
        title: 'المواشي والدواجن', image: AppImageAsset.livestockandpoultry),
    Craditem(title: 'الحبوب', image: AppImageAsset.grain),
  ];

  void toggleSuggestionsPage() {
    isSuggestionsPageActive.toggle();
    update();
  }

  @override
  clickMoreItem(int index, String name) {
    switch (index) {
      case 0:
        Get.toNamed(AppRout.typesofItemsPage, arguments: name);
        break;
      case 1:
        Get.toNamed(AppRout.typesofItemsPage, arguments: name);
        break;
      case 2:
        Get.toNamed(AppRout.splashScreenAnimlsPpage, arguments: name);
        break;
      case 3:
        Get.toNamed(AppRout.typesofItemsPage, arguments: name);
        break;
    }
  }

  @override
  filterData() {}

  @override
  goBackPage() {}

  @override
  goToDrawar() {}

  @override
  goToProfile() {
    Get.toNamed(AppRout.myProfile);
  }

  int indexpage = 0;
  goToPage(int index) async {
    switch (index) {
      case 0:
        indexpage = index;
        Get.offNamed(AppRout.homepage);
        update();
        break;
      case 1:
        indexpage = index;
        Get.offNamed(AppRout.typesofItemsPage, arguments: 'fivort');
        update();
        break;
      case 2:
        indexpage = index;
        await Get.offNamed(AppRout.shoppingPage);
        update();
        break;
      case 3:
        indexpage = index;
        Get.offNamed(AppRout.myProfile);
        update();
        break;
    }
  }

  @override
  search() {}
}
