import 'package:bigcart/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProfileUserController extends GetxController {
  navigateToPages(int index);
}

class ProfileUserControllerImp extends ProfileUserController {
  @override
  navigateToPages(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRout.aboutMe);
        break;
      case 1:
        Get.toNamed(AppRout.orderPage);
        break;
      case 2:
        break;
      case 3:
        Get.toNamed(AppRout.confirmpassword);
        break;
      case 4:
        Get.toNamed(AppRout.manageAddresses);
        break;
    }
  }

  List profileSetting = [
    {
      "title": "نبذة عني",
      "icon": Icons.person_pin,
    },
    {
      "title": "طلبي",
      "icon": Icons.check_box_outlined,
    },
    {
      "title": "الاشعارات",
      "icon": Icons.notifications,
    },
    {
      "title": "تغير كلمة المرور",
      "icon": Icons.local_post_office_outlined,
    },
    {
      "title": "إدارة العناويين",
      "icon": Icons.location_on_outlined,
    },
  ];
}
