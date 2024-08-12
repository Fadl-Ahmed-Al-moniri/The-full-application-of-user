import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key,
    required this.total,
  });
  final String total;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 00,
      height: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: AppColor.totalTextShadowColor,
        ),
        borderRadius: BorderRadius.circular(14),
        color: AppColor.totalTextColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(" ريال  "),
          Text(total.toString()),
          const Text(":   الاجمالي"),
        ],
      ),
    );
  }
}
