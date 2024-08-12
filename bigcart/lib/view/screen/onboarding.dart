import 'package:bigcart/controller/onboarding_controller.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/onboarding/costembutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends GetView<OnBoardingControllerImp> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controllerImp = Get.put(OnBoardingControllerImp());
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.onPageChang(value);
          },
          itemCount:controllerImp.onBoardingList.length,
          itemBuilder: (context, i) {
            return SafeArea(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0,
                    height: height,
                    width: width,
                    child: Image.asset(
                      controllerImp.onBoardingList[i].image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    width: width / 1.5,
                    child: Text(
                      controllerImp.onBoardingList[i].title!,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  controllerImp.onBoardingList[i].body == null
                      ? Positioned(
                          top: 100,
                          width: width / 3,
                          child: Image.asset(
                            controllerImp.onBoardingList[i].imagebody!,
                            fit: BoxFit.cover,
                          ))
                      : Positioned(
                          top: 150,
                          width: width,
                          child: Text(
                            controllerImp.onBoardingList[i].body!,
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          )),
                  Positioned(
                    bottom: height / 8,
                    child: GetBuilder<OnBoardingControllerImp>(
                      builder: (controller) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            controllerImp.onBoardingList.length,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 900),
                              margin: const EdgeInsets.only(right: 5),
                              width: 10.83,
                              height: 10,
                              decoration: BoxDecoration(
                                color: controller.currentPage == index
                                    ? AppColor.middledarkGreen
                                    : AppColor.whitgray,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      width: width,
                      bottom: 2,
                      child: CustomButtonOnboarding(
                        title: 'التالي',
                        onTap: () => controller.next(),
                      )

                      )
                ],
              ),
            );
          }),
    );
  }
}
