// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/home/pages/shop/productDetails_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';

import 'package:bigcart/view/widget/home/page/profile/order/custombuttonOrder.dart';
import 'package:bigcart/view/widget/home/page/shop/product_details/favourit_button.dart';
import 'package:bigcart/view/widget/home/page/shop/product_details/product_card.dart';
import 'package:bigcart/view/widget/home/page/shop/product_details/product_count.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/home/page/product_details/Product_details.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ProductDataControllerImp controller = Get.put(ProductDataControllerImp());

    return Scaffold(
      backgroundColor: AppColor.backGround,
      appBar: AppBar(
        surfaceTintColor: AppColor.white,
        backgroundColor: AppColor.white,
        title: Text(controller.product.value.name, style: titleofAppbar),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ProductStack(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: const [
                BoxShadow(
                    color: AppColor.adsColor,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, -10))
              ],
            ),
            child: Container(
              width: double.infinity,
              height: height / 2,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCount(),
                  ProductCard(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Custombuttonorder(
                          title: "اضافه الى السله",
                          height: width / 7,
                          onTap: () {
                            controller.addToCart(
                                name: 'fadl',
                                image: AppImageAsset.adsImage,
                                price: 20,
                                count: 2);
                          },
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: AddToFavButton(
                              widget: Icon(
                                Icons.favorite_outline,
                                color: AppColor.white,
                              ),
                              height: width / 7,
                              onTap: () {
                                controller.addToFavorites();
                              }))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
