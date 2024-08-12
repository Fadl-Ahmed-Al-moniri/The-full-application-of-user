import 'package:bigcart/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


abstract class SignUpController extends GetxController {
  signup();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
   bool isshowpassword = true;

  // StatusRucust? statusRucust;

  // SignupData signupData = SignupData(Get.find());

  List data = [];
  @override
  signup() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
    //   statusRucust = StatusRucust.loading;
    //   update(); // تأكد من تحديث الحالة هنا
    //   var response =
    //       await signupData.postData(username.text, password.text, phone.text);
    //   print("==================================== controller $response");
    //   statusRucust = handlingData(response);
    //   if (statusRucust == StatusRucust.success) {
    //     if (response['status'] == 'success') {
    //       // data.addAll(response['data']);
    //       // Get.defaultDialog(title: 'success', middleText: "singup Successfly");
    //       Get.offAllNamed(
    //         AppRout.homepage,
    //         // arguments: {"email": email.text}
    //       );
    //     } else {
    //       Get.defaultDialog(
    //           title: "warning", middleText: "Phone or email existing");
    //       statusRucust = StatusRucust.faliure;
    //     }
    //   }
    //   update(); // تأكد من تحديث الحالة هنا
    }
    // else {}
  }

  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRout.login);
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
