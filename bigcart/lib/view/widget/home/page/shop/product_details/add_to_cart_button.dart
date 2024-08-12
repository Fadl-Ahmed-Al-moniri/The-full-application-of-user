import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.txt,required this.icon, this.onPressed});
  final String txt;
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: onPressed,
      color: Colors.green[400],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            txt,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Icon(
            icon,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
