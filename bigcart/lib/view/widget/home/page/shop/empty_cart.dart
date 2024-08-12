// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bigcart/controller/home/pages/shop/shop_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/onboarding/costembutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    ShoppingControllerImp controller = Get.put(ShoppingControllerImp());
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
            Icons.shopping_bag_outlined,
            color: AppColor.iconColor,
            size: 200,
          )),
          Text("سله التسوق فارغة", style: textofOrderItem),
          Text(
            "قم باضافه المنتجات التي تريدها من صفحه الاقسام",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 100,
          ),
          CustomButtonOnboarding(
            title: 'ابدأ التسوق',
            onTap: () {
              controller.goTohome();
            },
            isShadow: false,
          )
        ],
      ),
    );
  }
}
