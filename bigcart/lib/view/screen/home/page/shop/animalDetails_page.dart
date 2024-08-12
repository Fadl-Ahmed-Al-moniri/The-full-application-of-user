// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigcart/controller/home/pages/shop/animalDetails_controller.dart';
import 'package:bigcart/controller/home/pages/shop/shop_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/view/widget/home/page/profile/order/custombuttonOrder.dart';

import 'package:bigcart/view/widget/home/page/shop/animal_details/animal_card.dart';
import 'package:bigcart/view/widget/home/page/shop/animal_details/animal_details_stack.dart';
import 'package:bigcart/view/widget/home/page/shop/container_counter.dart';
import 'package:bigcart/view/widget/home/page/shop/product_details/favourit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepDetails extends StatelessWidget {
  const SheepDetails({super.key});

  @override
  Widget build(BuildContext context) {
   Get.lazyPut(
      () => AnimaldetailsControllerImp(),
    );
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder<AnimaldetailsControllerImp>(builder: (controller) => Scaffold(
        backgroundColor: AppColor.backGround,
        appBar: AppBar(
          backgroundColor: AppColor.white,
          surfaceTintColor: AppColor.white,
          title: Text(controller.animleModel.value.name, style: titleofAppbar),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SheepStack(),
            Container(
              width: width,
              child: Stack(
                // clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: width,
                    height: height / 2.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      boxShadow: const [
                        BoxShadow(
                            color: AppColor.backGroundColor,
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(0, -30))
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: height / 2,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SheepCard(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Custombuttonorder(
                                      title: "اضافه الى السله",
                                      height: width / 7,
                                      onTap: () {
                                        controller.addToCart(
                                          name:
                                              controller.animleModel.value.name,
                                          image: controller
                                              .animleModel.value.image,
                                          price: controller
                                              .animleModel.value.price,
                                          count: controller
                                              .animleModel.value.total,
                                        );
                                        
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
                        Positioned(
                            top: 1,
                            child: ContainerCounter(
                              onDecrement: () {
                                controller.decrementQuantity();
                              },
                              onEncrement: () {
                                controller.incrementQuantity();
                              },
                              counter: controller.quantity,
                              color: AppColor.backColorofTotal2,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ));
  }
}
