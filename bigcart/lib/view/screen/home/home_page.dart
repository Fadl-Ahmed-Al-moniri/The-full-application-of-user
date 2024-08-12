// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:bigcart/controller/home/homePage_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/view/screen/home/page/items/suggestion_page.dart';
import 'package:bigcart/view/widget/home/customCurvedNavigationBar.dart';
import 'package:bigcart/view/widget/home/customFristChild.dart';
import 'package:bigcart/view/widget/home/txtfieldWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    // HomepageControllerImp controller = Get.put(HomepageControllerImp());

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: AppColor.iconColor,
          size: 25,
        ),
        bottom: PreferredSize(
          preferredSize: Size(width, height / 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: const Icon(
                  color: AppColor.iconColor,
                  Icons.filter_list,
                  size: 25,
                ),
              ),
              Container(
                width: width / 1.2,
                child: TxtField(
                  hintText: 'ابحث هنا',
                  onTap: () => controller.toggleSuggestionsPage(),
                  onEditingComplete: () => controller.toggleSuggestionsPage(),
                  controller: controller.searchKye,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 50,
              height: 50,
              child: InkWell(
                  onTap: () => controller.goToProfile(),
                  child: Image.asset(AppImageAsset.profile)))
        ],
      ),
      body: Obx(
        () => AnimatedCrossFade(
          firstChild: CustomfirstChild(height: height, width: width),
          secondChild: SuggestionPage(),
          firstCurve: Curves.ease,
          crossFadeState: controller.isSuggestionsPageActive.value
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          sizeCurve: Curves.linear,
          secondCurve: Curves.slowMiddle,
          excludeBottomFocus: false,
          duration: Duration(milliseconds: 500),
        ),
      ),
      bottomNavigationBar: Customcurvednavigationbar(indexpage: 0,),
    );
  }
}
