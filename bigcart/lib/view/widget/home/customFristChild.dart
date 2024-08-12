// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:bigcart/controller/home/homePage_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/view/widget/home/customAdsWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/appthem.dart';

class CustomfirstChild extends StatelessWidget {
  const CustomfirstChild({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());

    return Container(
      height: height,
      width: height,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: [
          CustomAdsWidget(height: height, width: width),
          Container(
            height: height / 2,
            // color: AppColor.adsColor,
            child: GridView.builder(
              itemCount: controller.onCraditemList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: height / 2,
                  width: width / 2,
                  decoration: BoxDecoration(
                      // color: AppColor.orange,
                      borderRadius: BorderRadius.circular(19)),
                  child: InkWell(
                    onTap: () {
                      controller.clickMoreItem(
                        index,
                        controller.onCraditemList[index].title!,
                      );
                    },
                    child: Stack(
                      children: [
                        Positioned(
                          // width: width / 1.5,
                          height: height / 7,
                          bottom: 1,
                          left: 1,
                          child: Image.asset(
                            controller.onCraditemList[index].image!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                            top: -2,
                            left: -2,
                            child: Container(
                              height: 51,
                              width: 136,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(20)),
                                  color: AppColor.itemColorlable),
                              child: Center(
                                child: Text(
                                    controller.onCraditemList[index].title!,
                                    style: itemlableStyle),
                              ),
                            )),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
