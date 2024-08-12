import 'package:bigcart/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResrPassowrdController extends GetxController {
  restpassword();
  goTSuccessRestPassword();
}

class ResrPassowrdControllerImp extends ResrPassowrdController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  restpassword() {}

  @override
  goTSuccessRestPassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.toNamed(AppRout.doneConfirmPassWordPage);
    }
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
