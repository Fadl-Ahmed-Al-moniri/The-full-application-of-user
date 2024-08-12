import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class AddToFavButton extends StatelessWidget {
  const AddToFavButton(
      {required this.widget,
      this.onTap,
      this.height = 44,
      this.width = 380,
      super.key});
  final Widget widget;
  final void Function()? onTap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [AppColor.lightGreen, AppColor.middleLightGreen],
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
          ),
        ),
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Center(child: widget),
      ),
    );
  }
}
