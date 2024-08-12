// ignore_for_file: file_names

import 'package:bigcart/controller/splashScreen_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SplashControllerImp controller = Get.put(SplashControllerImp());
    // Get.put(MyServices);
    return Scaffold(
      backgroundColor: AppColor.halflightGreen,
      body: Center(
        child: Obx(() => AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOut,
              height: controller.logoSize.value * 100,
              width: controller.logoSize.value * 100,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(60, 0, 0, 0),
                      spreadRadius: 0,
                      blurRadius: 100,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Image.asset(
                  AppImageAsset.logoTrip,
                ),
              ),
            )),
      ),
    );
  }
}
