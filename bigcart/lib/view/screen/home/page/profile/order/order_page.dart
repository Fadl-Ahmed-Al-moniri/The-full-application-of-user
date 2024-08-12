import 'package:bigcart/controller/home/pages/profile/order/order_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/view/widget/home/page/profile/order/order_is_done.dart';
import 'package:bigcart/view/widget/home/page/profile/order/orders_is_waitt.dart';
import 'package:bigcart/view/widget/home/page/profile/order/show_order_status.dart';
import 'package:bigcart/view/widget/onboarding/costembutton.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => OrderControllerImp());
    return GetBuilder<OrderControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            controller.titleAppBar,
            style: titleofOrderAppbar,
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShowOrder(
                  isSelceted: controller.isSelected,
                  onTap: () {
                    controller.onSelectStausOrder();
                  },
                  title: "قيدالانتظار ",
                ),
                ShowOrder(
                  isSelceted: !controller.isSelected,
                  onTap: () {
                    controller.onSelectStausOrder();
                  },
                  title: "الطلبات المنجزة",
                ),
              ],
            ),
            controller.isSelected != true
                ? Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: controller.orderIsWait.length,
                        itemBuilder: (context, index) => OrderIsWait(
                          onTap: () {
                            controller.cancelOrder(index);
                          },
                          title: controller.orderIsWait[index].toString(),
                        ),
                      ),
                    ),
                  )
                : Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: controller.orderIsDone.length,
                        itemBuilder: (context, index) => OrdersIsDone(
                          title: controller.orderIsDone[index].toString(),
                        ),
                      ),
                    ),
                  ),
            CustomButtonOnboarding(
              height: 60,
              width: 200,
              title: 'التالي ',
              onTap: () {
                controller.clickOnNext();
              },
            )
          ],
        ),
      );
    });
  }
}
