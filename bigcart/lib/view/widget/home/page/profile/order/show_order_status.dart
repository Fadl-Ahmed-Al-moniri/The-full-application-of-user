import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class ShowOrder extends StatelessWidget {
  const ShowOrder({
    super.key,
    required this.isSelceted,
    required this.onTap,
    required this.title,
  });
  final void Function()? onTap;
  final String title;
  final bool isSelceted;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
              color: isSelceted == true
                  ? AppColor.white
                  : AppColor.backgroundofOrderTabbar,
              borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: isSelceted == true
                  ? AppColor.backgroundofOrderTabbar
                  : AppColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
