// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:bigcart/controller/home/pages/shop/billDetails_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/product_details/customTextFormField.dart';
import 'package:bigcart/view/widget/onboarding/costembutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillDetailsConfirmPage extends StatelessWidget {
  const BillDetailsConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Get.lazyPut(
      () => BillControllerImp(),
    );
    return GetBuilder<BillControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "الفاتوره",
            style: titleofAppbar,
          ),
          centerTitle: true,
        ),
        backgroundColor: AppColor.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            CustomDropdownButton(
              height: height / 1.2,
              hintTextt: controller.val,
              items: controller.addreses.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                controller.setvalue(value);
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintTextt: 'الوقت: 0:0',
              suffixIcon: Icons.date_range,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintTextt: 'رقم الطلب',
              suffixIcon: Icons.lock_rounded,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(hintTextt: 'إجمالي الطلبات :'),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(hintTextt: 'كود الخصم:'),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(hintTextt: 'الاجمالي النهائي :'),
            SizedBox(
              height: 10,
            ),
            CustomDropdownButton(
              height: height / 1.2,
              hintTextt: controller.val2,
              items: controller.payment_method.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                controller.setvalue2(value);
              },
              suffixIcon: Icons.attach_money_outlined,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButtonOnboarding(
              title: 'تاكيد',
              width: width,
              height: height / 14,
              isShadow: false,
              onTap: () {
                controller.goToConfirm();
              },
            )
          ],
        ),
      );
    });
  }
}

class CustomDropdownButton extends StatelessWidget {
  CustomDropdownButton(
      {super.key,
      required this.hintTextt,
      required this.items,
      required this.onChanged,
      required this.height,
      this.suffixIcon = Icons.location_history_rounded});
  final String hintTextt;
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?)? onChanged;
  final double height;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      itemHeight: height / 10,
      borderRadius: BorderRadius.circular(20),
      hint: CustomTextFormField(
        hintTextt: hintTextt,
        suffixIcon: suffixIcon,
        prefixIcon: Icons.download_rounded,
      ),
      icon: null,
      dropdownColor: AppColor.backColorofdropdown,
      items: items,
      // value: controller.val,
      isExpanded: true,
      iconSize: 0,
      onChanged: onChanged,
    );
  }
}
