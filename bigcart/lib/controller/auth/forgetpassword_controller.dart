import 'package:bigcart/view/screen/auth/confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForfetPasswordController extends GetxController {
  checkemail();
  goConfirmPassWord();
}

class ForfetPasswordControllerImp extends ForfetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  checkemail() {}

  @override
  goConfirmPassWord() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.off(const ConfirmPassWord());
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
