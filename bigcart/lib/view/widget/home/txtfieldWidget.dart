// ignore_for_file: must_be_immutable
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  TxtField(
      {super.key,
      required this.hintText,
      this.iconData,
      this.controller,
      this.onTap,
      this.onEditingComplete});
  TextEditingController? controller;
  final String hintText;
  void Function()? onTap;
  void Function()? onEditingComplete;
  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
              topRight: Radius.circular(100))),
      child: TextField(
        onTap: onTap,
        // onTapOutside: ,
        onEditingComplete: onEditingComplete,
        controller: controller,
        // canRequestFocus: false,

        textAlign: TextAlign.right,
        cursorColor: AppColor.iconColor,
        decoration: InputDecoration(
          suffixIcon: iconData == null
              ? null
              : Icon(
                  iconData,
                  color: AppColor.iconColor,
                  size: 25,
                ),
          hintText: hintText,
          hintTextDirection: TextDirection.rtl,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          border: InputBorder.none,
          errorStyle: const TextStyle(
              color: Colors.redAccent,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
