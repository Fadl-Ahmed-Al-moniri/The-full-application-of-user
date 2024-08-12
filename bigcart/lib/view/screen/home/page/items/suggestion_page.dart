// ignore_for_file: prefer_const_constructors

import 'package:bigcart/controller/home/homePage_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SuggestionPage extends StatelessWidget {
  SuggestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: AppColor.itemColorlable,
      padding: EdgeInsets.all(30),
      child: ListView(children: [
        Text(
          'سجل البحث',
          textAlign: TextAlign.right,
          style: lableStyle,
        ),
        SizedBox(
          height: height / 30,
        ),
        Container(
          height: height / 6,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2,
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: controller.searchItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 10,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    controller.searchKye.text =
                        "${controller.searchItems[index]}";
                    controller.searchItems.add(controller.searchKye);
                  },
                  child: Text(
                    controller.searchItems[index],
                    textAlign: TextAlign.right,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: height / 100,
        ),
        Text(
          'الإقتراحات',
          textAlign: TextAlign.right,
          style: lableStyle,
        ),
        SizedBox(
          height: height / 30,
        ),
        Container(
          height: height / 6,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2,
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: controller.suggestionItem.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 10,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    controller.searchKye.text =
                        controller.suggestionItem[index];
                    controller.suggestionItem.add(controller.searchKye);
                  },
                  child: Text(
                    controller.suggestionItem[index],
                    textAlign: TextAlign.right,
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }

}
