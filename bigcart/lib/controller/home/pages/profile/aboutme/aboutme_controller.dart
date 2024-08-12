import 'package:bigcart/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class AboutmeController extends GetxController {}

class AboutmeControllerImp extends AboutmeController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
   String titlePage = 'نبذة عني';
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isshowpassword = true;

  // StatusRucust? statusRucust;

  // SignupData signupData = SignupData(Get.find());

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  goToLogin() {
    Get.offNamed(AppRout.login);
  }

  goBack() {
    Get.back();
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
