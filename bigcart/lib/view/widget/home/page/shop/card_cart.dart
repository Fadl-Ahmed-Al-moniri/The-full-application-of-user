import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/view/widget/home/page/shop/container_counter.dart';
import 'package:flutter/material.dart';

class CardCart extends StatelessWidget {
  const CardCart({
    super.key,
    required this.onRemove,
    required this.nameProdect,
    required this.imagePath,
    required this.price,
    required this.count,
    required this.onDecrement,
    required this.onEncrement,
  });
  final void Function()? onRemove;
  final String nameProdect;
  final String imagePath;
  final int price;
  final int count;
  final void Function()? onDecrement;
  final void Function()? onEncrement;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: onRemove,
                  icon: const Icon(
                    Icons.delete,
                    color: AppColor.red,
                    size: 27,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(nameProdect),
                    Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " $price ريال",
                  textDirection: TextDirection.rtl,
                ),
                ContainerCounter(
                    onDecrement: onDecrement,
                    onEncrement: onEncrement,
                    counter: count),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
