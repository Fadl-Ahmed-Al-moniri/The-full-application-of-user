// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/home/pages/shop/animalDetails_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/shop/container_counter.dart';
import 'package:bigcart/view/widget/home/page/shop/ratingStarsReview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SheepCard extends StatelessWidget {
  const SheepCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AnimaldetailsControllerImp controller =
        Get.put(AnimaldetailsControllerImp());
    return GetBuilder<AnimaldetailsControllerImp>(builder: (controller) {
      return Container(
        height: height / 4.3,
        width: width,
        decoration: BoxDecoration(
            color: AppColor.backGround,
            borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          fit: StackFit.passthrough,
          children: [
            Positioned(
                left: 1,
                top: 20,
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
            Positioned(
              right: 5,
              top: 3,
              child: Text(
                controller.animleModel.value.name.toString(),
              ),
            ),
            Positioned(
              top: 30,
              right: 1,
              child: Text(
                "اسم المزرعه:  ${controller.animleModel.value.description}",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 50,
              right: 1,
              child: Text(
                "السعر:     ${controller.animleModel.value.price}",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height / 20,
                margin: EdgeInsets.symmetric(vertical: height / 30),
                child: RatingStarsReview(
                  onChanged: (rating) {
                    controller.setratinng(rating);
                  },
                  rating: controller.ratinng,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
