import 'package:bigcart/controller/home/pages/items/splashScreenAnimls_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashscreenanmilsPage extends StatelessWidget {
  const SplashscreenanmilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenAnmilsControllerImp controller =
        Get.put(SplashScreenAnmilsControllerImp());
    // Get.put(MyServices);
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeOut,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              controller.titlename,
              style: textofSplashScreen,
              textAlign: TextAlign.center,
            ),
            Image.asset(
              AppImageAsset.cowsGif,
            )
          ],
        ),
      ),
    );
  }
}
