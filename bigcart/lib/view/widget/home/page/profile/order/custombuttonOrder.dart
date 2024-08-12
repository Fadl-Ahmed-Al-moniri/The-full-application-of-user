import 'package:bigcart/controller/onboarding_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombuttonorder extends GetView<OnBoardingControllerImp> {
  const Custombuttonorder(
      {required this.title,
      this.onTap,
      this.height = 44,
      this.width = 380,
      super.key});
  final String title;
  final void Function()? onTap;
  final double? height;
  final double? width;

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
        ),
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Text(
          title,
          style: textofOrderButton,
        ),
      ),
    );
  }
}
