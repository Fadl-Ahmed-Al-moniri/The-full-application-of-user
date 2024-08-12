
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintTextt,
      this.prefixIcon,
      this.suffixIcon,
      this.onTap});
  final String hintTextt;
  IconData? suffixIcon;
  IconData? prefixIcon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
            suffixIcon: Icon(suffixIcon),
            suffixIconColor: AppColor.hintText,
            prefixIcon: Icon(prefixIcon),
            prefixIconColor: AppColor.hintText,
            hintTextDirection: TextDirection.rtl,
            hintText: hintTextt,
            helperStyle: hintTexttow,
            filled: true,
            fillColor: AppColor.backColorofListTile,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
