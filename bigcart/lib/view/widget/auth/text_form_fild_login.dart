// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class TextFormFieldLogin extends StatelessWidget {
  TextFormFieldLogin(
      {super.key,
      required this.hint,
      required this.icon,
            required this.validator,

      this.obscureText,
      this.keyboardType,
      required this.controller,
      this.onTapicon,
      this.isGreen = false});
  final String hint;
    final String? Function(String?) validator;

  final IconData? icon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final void Function()? onTapicon;
  bool isGreen;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: hint,
          hintTextDirection: TextDirection.rtl,
          hintStyle: Theme.of(context).textTheme.headlineSmall,
          suffixIcon: InkWell(onTap: onTapicon, child: Icon(icon)),
          suffixIconColor: isGreen == true
              ? AppColor.iconColor
              : Color.fromRGBO(134, 136, 137, 1),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 2))),
    );
  }
}
