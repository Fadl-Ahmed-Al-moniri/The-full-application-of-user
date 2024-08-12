// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigcart/controller/home/pages/shop/productDetails_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCount extends StatelessWidget {
  const ProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDataControllerImp controller = Get.put(ProductDataControllerImp());

    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 30, left: 50),
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.backGroundofTotalFiledColor,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controller.total,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.headlineSmallColor,
                    border: InputBorder.none),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "ادخال الكميه",
                textAlign: TextAlign.center,
                style: hintText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
