// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/auth/signup_controller.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/functions/validinput.dart';
import 'package:bigcart/view/widget/auth/button_login.dart';
import 'package:bigcart/view/widget/auth/login_image.dart';
import 'package:bigcart/view/widget/auth/text_form_fild_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => SignUpControllerImp());
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    double height = MediaQuery.of(context).size.height;

    return Form(
      key: controller.formstate,
      child: Scaffold(
        body: ListView(
          children: [
            LoginImage(
              imageName: AppImageAsset.signuplogo,
              txt: "مرحبا",
              height: height / 2.6,
            ),
            Container(
              padding: EdgeInsets.all(20),
              //  height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 245, 249, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "إنشاء حساب",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "إنشاء حساب بسرعه",
                    style: TextStyle(
                        color: Color.fromRGBO(134, 136, 137, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldLogin(
                    hint: "أسم المستخدم",
                    validator: (val) {
                      return validInput(val!, 3, 20, "username");
                    },
                    icon: Icons.person_3_outlined,
                    keyboardType: TextInputType.text,
                    controller: controller.username,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldLogin(
                    hint: "رقم الهاتف",
                    validator: (val) {
                      return validInput(val!, 5, 20, "phone");
                    },
                    icon: Icons.phone_locked_outlined,
                    keyboardType: TextInputType.phone,
                    controller: controller.phone,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldLogin(
                    hint: " البريد الإلكتروني",
                    validator: (val) {
                      return validInput(val!, 5, 20, "email");
                    },
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.email,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldLogin(
                    hint: "كلمة المرور",
                    validator: (val) {
                      return validInput(val!, 5, 20, "password");
                    },
                    icon: Icons.lock_outline_rounded,
                    obscureText: controller.isshowpassword,
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                    onTapicon: () => controller.showpassword(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldLogin(
                    hint: "تأكيد كلمة المرور ",
                    validator: (val) {
                      return validInput(val!, 5, 20, "password");
                    },
                    icon: Icons.lock_outline_rounded,
                    obscureText: controller.isshowpassword,
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonLogin(
                      txt: "تسجيل الدخول",
                      onPressed: () => controller.signup()),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => controller.goToLogin(),
                        child: Text(
                          "تسجيل",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Text(
                        "  هل لديك حساب بالفعل ؟",
                        style: TextStyle(
                            color: Color.fromRGBO(134, 136, 137, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
