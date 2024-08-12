// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:bigcart/controller/auth/done_confirmPassword_controller.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/view/widget/auth/button_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoneConfirmPassWord extends StatelessWidget {
  const DoneConfirmPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    DoneConfirmpasswordControllerImp controller =
        Get.put(DoneConfirmpasswordControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                AppImageAsset.logoTrip,
                height: 70,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.asset(AppImageAsset.check),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "تم تأكيد كلمة المرور ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonLogin(
                    txt: "تم",
                    onPressed: () {
                      controller.goTNext();
                    },
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
