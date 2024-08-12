// ignore_for_file: must_be_immutable

import 'package:bigcart/controller/onboarding_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnboarding extends GetView<OnBoardingControllerImp> {
  CustomButtonOnboarding(
      {required this.title,
      this.onTap,
      this.height = 60,
      this.width = 380,
      this.isShadow = true,
      super.key});
  final String title;
  final void Function()? onTap;
  final double? height;
  final double? width;
  bool isShadow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [AppColor.lightGreen, AppColor.middleLightGreen],
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
            ),
            boxShadow: isShadow == true
                ? const [
                    BoxShadow(
                        color: AppColor.Black,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(0, 8))
                  ]
                : null),
        margin: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
        child: Center(
          child: Text(
            title!,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
