// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bigcart/controller/home/pages/items/selectAnimls_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectanimlsPage extends StatelessWidget {
  const SelectanimlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SelectanimlsControllerImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder<SelectanimlsControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.search,
            size: 25,
            color: Color(0xFF6CC51D),
          ),
          automaticallyImplyLeading: false,
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
          itemCount: controller.onItemofanimlsModelList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisExtent: 306,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: AppColor.white,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () async {
                      // await controller.clickMoreItem(
                      //   index,
                      //   controller.onItemofanimlsModelList[index].title!,
                      // );
                      Get.toNamed(
                        AppRout.typeofAnimlsPage,
                        arguments:
                            controller.onItemofanimlsModelList[index].title!,
                      );
                      // Get.offNamed(AppRout.animalDetailsPage,
                      //     arguments:
                      //         controller.onItemofanimlsModelList[index].title!);
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: width / 3,
                          width: width / 3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.lightGreen,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            controller.onItemofanimlsModelList[index].image!,
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                          )),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 5,
                      child: controller
                                  .onItemofanimlsModelList[index].isFavorite ==
                              true
                          ? Icon(Icons.favorite, size: 25, color: AppColor.red)
                          : Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: AppColor.headlineSmallColor,
                            )),
                  Positioned(
                      top: 10,
                      left: 5,
                      child: Text(
                        controller.onItemofanimlsModelList[index].title!,
                        style: titleselectAnimlsofItem,
                      )),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
