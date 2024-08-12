// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:bigcart/controller/home/pages/shop/productDetails_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ProductStack extends StatelessWidget {
  const ProductStack({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    ProductDataControllerImp controller = Get.put(ProductDataControllerImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                child: controller.isLoding == true
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
                        controller.product.value.image,
                        width: 200,
                      )),
            // Positioned(
            //     top: 40,
            //     child: Text(
            //       txt,
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     )),
            // Positioned(
            //     top: 25,
            //     left: 20,
            //     child: IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.arrow_back,
            //           size: 30,
            //         )))
          ]),
    );
  }
}
