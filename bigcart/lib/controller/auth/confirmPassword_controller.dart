import 'package:bigcart/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ConfirmPassWordController extends GetxController {
  restpassword();
  goTSuccessRestPassword();
}

class ConfirmPassWordControllerImp extends ConfirmPassWordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  restpassword() {}

  @override
  goTSuccessRestPassword() {
    Get.toNamed(AppRout.homepage);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();

    super.dispose();
  }
}
