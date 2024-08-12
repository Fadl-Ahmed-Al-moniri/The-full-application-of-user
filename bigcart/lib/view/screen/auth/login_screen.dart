// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/auth/login_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/functions/validinput.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:bigcart/view/widget/auth/button_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/login_image.dart';
import '../../widget/auth/text_form_fild_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    MyServices myServices = Get.find();
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: controller.formstate,
        child: ListView(
          children: [
            LoginImage(
              imageName: AppImageAsset.loginLogo,
              txt: "مرحبا",
              height: height / 2,
            ),
            Container(
              padding: EdgeInsets.all(20),
              //  height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.backGroundLogin,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "سجل الدخول الى حسابك",
                    style: TextStyle(
                        color: Color.fromRGBO(134, 136, 137, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
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
                    validator: (val) {
                      return validInput(val!, 5, 20, "password");
                    },
                    hint: "كلمة السر",
                    icon: Icons.lock_outline_rounded,
                    obscureText: controller.isshowpassword,
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                    onTapicon: () => controller.showpassword(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            child: Text("نسيت كلمة المرور",
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            onTap: () => controller.goToForgetPassword()),
                        SizedBox(
                          width: height / 6,
                        ),
                        Text(
                          "ذكرني",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonLogin(
                    txt: "تسجيل الدخول",
                    onPressed: () => controller.login(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => controller.goToSignup(),
                        child: Text(
                          "إنشاءحساب",
                          style: TextStyle(
                              fontFamily: 'Almarai',
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Text(
                        "  لا تملك حساب بالفعل ؟",
                        style: TextStyle(
                            fontFamily: 'Almarai',
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
