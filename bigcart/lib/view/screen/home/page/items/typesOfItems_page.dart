// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigcart/controller/home/pages/items/typesOfItems_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/customCurvedNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class TypesofitemsPage extends StatelessWidget {
  const TypesofitemsPage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TypesofitemsControllerImp controller = Get.put(TypesofitemsControllerImp());

    return Scaffold(
      backgroundColor: AppColor.backGround,
      appBar: AppBar(
        leading: const Icon(
          Icons.search,
          size: 25,
          color: Color(0xFF6CC51D),
        ),
        title: Text(
          controller.titlename,
          style: titleofAppbar,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.filter_alt,
              size: 22,
              color: Color(0xFF6CC51D),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        itemCount: controller.onItemofsearchList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: AppColor.white,
            child: Stack(
              children: [
                InkWell(
                  onTap: () => controller.onClickCard(),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: width / 3.5,
                      width: width / 3.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.lightGreen,
                        shape: BoxShape.circle,
                      ),
                      child: controller.isloding == false
                          ? Image.asset(
                              controller.onItemofsearchList[index].image!,
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            )
                          : Shimmer.fromColors(
                              baseColor: AppColor.lightGreen,
                              highlightColor: AppColor.headlineSmallColor,
                              enabled: true,
                              direction: ShimmerDirection.rtl,
                              period: Duration(seconds: 2),
                              child: Container(
                                height: width / 3.5,
                                width: width / 3.5,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColor.Gold,
                                  shape: BoxShape.circle,
                                ),
                              )),
                    ),
                  ),
                ),
                Positioned(
                    top: 2,
                    right: 2,
                    child: controller.onItemofsearchList[index].isFavorite ==
                            true
                        ? Icon(Icons.favorite, size: 25, color: AppColor.red)
                        : Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: AppColor.headlineSmallColor,
                          )),
                Positioned(
                  bottom: 40,
                  width: width,
                  child: Divider(),
                ),
                Positioned(
                  bottom: 10,
                  // width: width,
                  left: 10,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 22,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: controller.isloding == false
                      ? Text(
                          controller.onItemofsearchList[index].title!,
                          style: titleSearchofItem,
                        )
                      : Shimmer.fromColors(
                          baseColor: AppColor.lightGreen,
                          highlightColor: AppColor.headlineSmallColor,
                          enabled: true,
                          direction: ShimmerDirection.rtl,
                          period: Duration(seconds: 2),
                          child: Container(
                            height: width / 20,
                            width: width / 3.5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.Gold,
                              shape: BoxShape.rectangle,
                            ),
                          )),
                ),
                Positioned(
                  bottom: 2,
                  right: 10,
                  child: controller.isloding == false
                      ? Text(
                          controller.onItemofsearchList[index].suptitle!,
                          style: suptitleSearchofItem,
                        )
                      : Shimmer.fromColors(
                          baseColor: AppColor.lightGreen,
                          highlightColor: AppColor.headlineSmallColor,
                          enabled: true,
                          direction: ShimmerDirection.rtl,
                          period: Duration(seconds: 2),
                          child: Container(
                            height: width / 40,
                            width: width / 3.5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.Gold,
                              shape: BoxShape.rectangle,
                            ),
                          )),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Customcurvednavigationbar(indexpage: 1,),
    );
  }
}
