// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/home/pages/profile/manageAddress_controller/profile_user_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/customCurvedNavigationBar.dart';
import 'package:bigcart/view/widget/home/page/profile/manageAddresse/item_setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => ProfileUserControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: GetBuilder<ProfileUserControllerImp>(builder: (controller) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, boxShadow: const [
                  BoxShadow(
                      color: AppColor.middleLightGreen,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(0, 5))
                ]),
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundColor: AppColor.white,
                  // borderRadius: BorderRadius.circular(350),
                  child: Icon(
                    Icons.person_2_outlined,
                    color: AppColor.iconColor,
                    size: 50,
                  ),
                ),
              ),
              Text(
                "اسم المستخدم",
                style: textofUsernameLable,
              ),
              Text(
                "username@gmail.com",
                style: textofUsername,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: ListView.builder(
                    padding: const EdgeInsets.all(20),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.profileSetting.length,
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemSettings(
                            iconName: controller.profileSetting[index]["icon"],
                            title: controller.profileSetting[index]["title"],
                            onTap: () {
                              controller.navigateToPages(index);
                            }))),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                // child: ItemSettings(
                //     iconName: Icons.logout_rounded,
                //     title: "تسجيل الخروج",
                //     onTap: () {}),
                child: InkWell(
                  onTap: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تسجيل الخروج",
                      ),
                      Icon(
                        Icons.logout_rounded,
                        size: 30,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: Customcurvednavigationbar(indexpage: 3,),
    );
  }
}
