import 'package:bigcart/controller/home/homePage_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Customcurvednavigationbar extends StatelessWidget {
  const Customcurvednavigationbar({super.key, required this.indexpage});
  final int indexpage;

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    return CurvedNavigationBar(
        // letIndexChange: (value) {
        //   if (value > 4) {
        //     return false;
        //   } else {
        //     controller.indexpage = value;
        //     return true;
        //   }
        //   // return true;
        // },
        animationCurve: Curves.easeInCirc,
        index: indexpage,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppColor.middleLightGreen,
        height: 75,
        color: AppColor.halflightGreen,
        animationDuration: const Duration(milliseconds: 100),
        items: const <Widget>[
          Icon(
            Icons.home,
            color: AppColor.white,
          ),
          Icon(
            Icons.favorite,
            color: AppColor.white,
          ),
          Icon(
            Icons.shopping_cart_rounded,
            color: AppColor.white,
          ),
          Icon(
            Icons.person,
            color: AppColor.white,
          ),
        ],
        onTap: (index) {
          controller.indexpage = index;
          controller.goToPage(index);
          controller.update();
        });
  }
}
