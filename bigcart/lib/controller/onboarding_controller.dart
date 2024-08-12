import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:bigcart/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChang(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  MyServices myServices = Get.find();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      title: "Welcome to",
      imagebody: AppImageAsset.logoTrip,
      image: AppImageAsset.onBoardingOne,
    ),
    OnBoardingModel(
        title: "شراء منتجات الألبان عالية الجودة",
        body:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
        image: AppImageAsset.onBoardingTwo),
    OnBoardingModel(
        title: "شراء فواكه عالية الجودة",
        body:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
        image: AppImageAsset.onBoardingThree),
    OnBoardingModel(
        title: "احصل على خصومات على جميع المنتجات",
        body:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
        image: AppImageAsset.onBoardingFour),
  ];

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRout.login);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChang(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
