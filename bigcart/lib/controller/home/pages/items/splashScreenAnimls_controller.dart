import 'dart:async';

import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:get/get.dart';

class SplashScreenAnmilsControllerImp extends GetxController {
  String titlename = Get.arguments;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 1000), () {});
    gotoItemsofanimle();
  }

  gotoItemsofanimle() {
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(AppRout.selectAnimlsPage, arguments: titlename);
    });
  }
}
