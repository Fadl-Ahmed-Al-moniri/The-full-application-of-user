// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:bigcart/controller/home/pages/shop/productDetails_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/shop/ratingStarsReview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDataControllerImp controller = Get.put(ProductDataControllerImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return controller.isLoding == true
        ? Shimmer.fromColors(
            baseColor: AppColor.labelSmallcolor,
            highlightColor: AppColor.headlineSmallColor,
            enabled: true,
            direction: ShimmerDirection.rtl,
            period: Duration(seconds: 2),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: width / 2,
              width: width / 1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.Gold,
                shape: BoxShape.rectangle,
              ),
            ))
        : Container(
            height: width / 2,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.backGround,
                borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Text(controller.product.value.harvestDate),
                Expanded(
                  child: Text(
                    controller.product.value.description,
                    style: TextStyle(fontSize: 10),
                    maxLines: 6,
                  ),
                ),
                Text(
                  controller.product.value.calories.toString(),
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  controller.product.value.price.toString(),
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Container(
                  height: 35,
                  child: RatingStarsReview(
                    onChanged: (rating) {
                      controller.setratinng(rating);
                    },
                    rating: controller.ratinng,
                  ),
                )
              ],
            ),
          );
  }
}
