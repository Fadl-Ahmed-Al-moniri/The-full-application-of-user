import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key, required this.txt, required this.onPressed});
  final String txt;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [AppColor.lightGreen, AppColor.middleLightGreen],
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
          ),
        ),
        margin: const EdgeInsets.only(bottom: 20, left: 2, right: 2),
        child: Center(
          child: Text(
            txt,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
