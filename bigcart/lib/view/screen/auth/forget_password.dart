// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/auth/forgetpassword_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/functions/validinput.dart';
import 'package:bigcart/view/widget/auth/button_login.dart';
import 'package:bigcart/view/widget/auth/text_form_fild_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassWord extends StatelessWidget {
  const ForgetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    ForfetPasswordControllerImp controller =
        Get.put(ForfetPasswordControllerImp());
    double height = MediaQuery.of(context).size.height;

    return Form(
      key: controller.formstate,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // color: AppColor.Black,
          child: Center(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    AppImageAsset.logoTrip,
                    height: 70,
                  ),
                ),
                Container(
                  height: height / 2.4,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text(
                        "نسيت كلمة المرور",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ادخل بريدك الإلكتروني لإستعادة كلمة المرور",
                        style: TextStyle(
                            color: Color.fromRGBO(134, 136, 137, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        "email@gmail.com",
                        style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
                      ),
                      ButtonLogin(
                          txt: "إرسال",
                          onPressed: () => controller.goConfirmPassWord())
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
