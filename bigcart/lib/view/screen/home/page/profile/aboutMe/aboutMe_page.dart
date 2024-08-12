import 'package:bigcart/controller/home/pages/profile/aboutme/aboutme_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/functions/validinput.dart';
import 'package:bigcart/view/widget/auth/text_form_fild_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutmePage extends StatelessWidget {
  const AboutmePage({super.key});

  @override
  Widget build(BuildContext context) {
    AboutmeControllerImp controller = Get.put(AboutmeControllerImp());

    return Form(
      key: controller.formstate,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            controller.titlePage,
            style: titleofAppbar,
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Card(
            shadowColor: AppColor.shadowColor,
            elevation: 20,
            color: AppColor.white,
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Divider(),
                TextFormFieldLogin(
                  hint: 'الاسم',
                  validator: (val) {
                    return validInput(val!, 5, 20, "username");
                  },
                  icon: Icons.person,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.username,
                  isGreen: true,
                ),
                Divider(),
                TextFormFieldLogin(
                  hint: 'الايميل',
                  validator: (val) {
                    return validInput(val!, 5, 20, "email");
                  },
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.email,
                  isGreen: true,
                ),
                Divider(),
                TextFormFieldLogin(
                  hint: 'رقم الهاتف',
                  validator: (val) {
                    return validInput(val!, 5, 20, "phone");
                  },
                  icon: Icons.phone,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.phone,
                  isGreen: true,
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
