import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/shop/custom_icon_counter.dart';
import 'package:flutter/material.dart';

class ContainerCounter extends StatelessWidget {
  ContainerCounter({
    super.key,
    required this.onDecrement,
    required this.onEncrement,
    required this.counter,
    this.color = AppColor.backColorofTotal,
  });
  final void Function()? onEncrement;
  final void Function()? onDecrement;
  final Color color;
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          CustomIconCounter(
            icon: Icons.remove,
            onPressed: onDecrement,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(counter.toString()),
          ),
          CustomIconCounter(
            icon: Icons.add,
            onPressed: onEncrement,
          ),
        ],
      ),
    );
  }
}
