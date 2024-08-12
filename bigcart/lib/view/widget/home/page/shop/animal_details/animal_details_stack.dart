// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/home/pages/shop/animalDetails_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class SheepStack extends StatelessWidget {
  const SheepStack({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AnimaldetailsControllerImp controller =
        Get.put(AnimaldetailsControllerImp());
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.backGroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                      bottomRight: Radius.circular(250))),
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                      bottomRight: Radius.circular(250))),
            ),
            Positioned(
                bottom: -30,
                child: controller.isLoding == false
                    ? Shimmer.fromColors(
                        baseColor: AppColor.labelSmallcolor,
                        highlightColor: AppColor.headlineSmallColor,
                        enabled: true,
                        direction: ShimmerDirection.rtl,
                        period: Duration(seconds: 2),
                        child: Container(
                          height: width / 2,
                          width: width / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.Gold,
                            shape: BoxShape.rectangle,
                          ),
                        ))
                    : Image.asset(
                        controller.animleModel.value.image,
                        fit: BoxFit.contain,
                        width: width / 1.3,
                      )),
          ]),
    );
  }
}
