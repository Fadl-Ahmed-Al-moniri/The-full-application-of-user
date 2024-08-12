import 'package:bigcart/core/constant/appthem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {



  ThemeData appTheme = themeArabic;
  @override
  void onInit() {
    appTheme = themeArabic;
    Get.changeTheme(appTheme);
    super.onInit();
  }
}
