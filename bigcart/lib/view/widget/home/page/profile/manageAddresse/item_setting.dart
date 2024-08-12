import 'package:flutter/material.dart';

class ItemSettings extends StatelessWidget {
  const ItemSettings({
    super.key,
    required this.iconName,
    required this.title,
    required this.onTap,
  });
  final String title;
  final IconData iconName;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.arrow_back_rounded,
          ),
          Row(
            children: [
              Text(
              title,
               
              ),
              Icon(
                iconName,
                color: Colors.green,
                size: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
