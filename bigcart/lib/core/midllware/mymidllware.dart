// ignore_for_file: body_might_complete_normally_nullable

import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//صفحة اضهار الاون بوردينق لاول مره للمستخدم
class MymiDllWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  redirectt() {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      Get.offNamed(AppRout.homepage);

      // return const RouteSettings(name: AppRout.homepage);
    } else {
      Get.offNamed(AppRout.OnBoarding);
      // return const RouteSettings(name: AppRout.OnBoarding);
    }
  }
}
