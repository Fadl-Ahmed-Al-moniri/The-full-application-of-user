import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class OrdersIsDone extends StatelessWidget {
  const OrdersIsDone({
    super.key,
    required this.title,
  });
  final String title;

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
        children: [
          Expanded(
            flex: 2,
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
