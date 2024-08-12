import 'package:bigcart/controller/home/pages/shop/shop_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/view/widget/home/customCurvedNavigationBar.dart';
import 'package:bigcart/view/widget/home/page/shop/card_cart.dart';
import 'package:bigcart/view/widget/home/page/shop/empty_cart.dart';
import 'package:bigcart/view/widget/home/page/shop/total_price_widget.dart';
import 'package:bigcart/view/widget/onboarding/costembutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => ShoppingControllerImp(),
    );
    return GetBuilder<ShoppingControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "سلة التسوق ",
            style: titleofOrderAppbar,
          ),
        ),
        body: controller.ordersData.isEmpty
            ? const EmptyCart()
            : Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: controller.ordersData.length,
                        itemBuilder: (context, index) => CardCart(
                            onDecrement: () {
                              controller.decrement(index);
                            },
                            onEncrement: () {
                              controller.encrement(index);
                            },
                            count: controller.ordersData[index]['count'],
                            price: controller.ordersData[index]['price'],
                            onRemove: () {
                              controller.deleteFromTrash(index);
                            },
                            nameProdect: controller.ordersData[index]["name"],
                            imagePath: controller.ordersData[index]["image"]),
                      ),
                    ),
                  ),
                  TotalPriceWidget(
                    total: controller.totalPrice.toString(),
                  ),
                  CustomButtonOnboarding(
                    title: 'الدفع',
                    onTap: () {
                      controller.goToConfiermpage();
                    },
                    isShadow: false,
                  )
                ],
              ),
        bottomNavigationBar: Customcurvednavigationbar(indexpage: 2,),
      );
    });
  }
}
