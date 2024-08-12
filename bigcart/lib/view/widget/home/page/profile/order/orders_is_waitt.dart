// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/profile/order/custombuttonOrder.dart';
import 'package:flutter/material.dart';

class OrderIsWait extends StatelessWidget {
  const OrderIsWait({
    super.key,
    required this.onTap,
    required this.title,
  });
  final String title;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.backgroundofOrder,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Custombuttonorder(
                title: 'الغاء',
                onTap: onTap,
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "رقم الفاتورة ",
                    style: textofOrderItem,
                  ),
                  Text(
                    title,
                    style: suptitleSearchofItem,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
