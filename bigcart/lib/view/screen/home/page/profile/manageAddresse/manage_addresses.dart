// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/profile/manageAddresse/container_addresses.dart';
import 'package:bigcart/view/widget/onboarding/costembutton.dart';
import 'package:flutter/material.dart';

class ManageAddresses extends StatelessWidget {
  const ManageAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(
    //   () => ManageAddressesControllerImp(),
    // );
    // return GetBuilder<ManageAddressesControllerImp>(builder: (controller) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        color: AppColor.backGroundLogin,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "إدارة العناويين",
              style: textofUsernameLable,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              flex: MediaQuery.of(context).size.height ~/ 80,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  // itemCount: controller.address.length,
                  itemBuilder: (context, index) => ContainerAddresses(
                      addressName: 'controller.address[index]'),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: CustomButtonOnboarding(
                  title: "إضافة",
                  onTap: () {
                    // controller.addAddressInMap(context);
                  },
                  isShadow: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  // );
}
