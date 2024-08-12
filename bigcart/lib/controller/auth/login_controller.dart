import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetPassword();
  showpassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  bool isshowpassword = true;
  // late MyServices myServices;
  MyServices myServices_2 = Get.find();

  @override
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
   
    if (formdata!.validate()) {
       await  myServices_2.sharedPreferences.setString("onboarding", "1");
    Get.offAllNamed(AppRout.homepage);
    // //   statusRucust = StatusRucust.loading;
    // //   update(); // تأكد من تحديث الحالة هنا
    // //   var response = await loginData.postData(
    // //     phone.text,
    // //     password.text,
    // //   );
    // //   print("==================================== controller $response");
    // //   statusRucust = handlingData(response);
    // //   if (statusRucust == StatusRucust.success) {
    // //     if (response['status'] == 'success') {
    // //       myServices.sharedPreferences
    // //           .setString('userid', response["data"]["userid"].toString());

    // //       Get.offAllNamed(
    // //         AppRout.homepage,
    // //         // arguments: {"email": email.text}
    // //       );
    // //     } else {
    // //       Get.defaultDialog(
    // //           title: "warning", middleText: "Phone or email existing");
    // //       statusRucust = StatusRucust.faliure;
    // //     }
    // //   }
    // //   update();

    }
  }

  @override
  void onInit() {
    // myServices = MyServices();
    super.onInit();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRout.forgetpassword);
  }

  @override
  goToSignup() {
    Get.toNamed(AppRout.signup);
  }
}
