import 'package:flutter/material.dart';

class CustomIconCounter extends StatelessWidget {
  const CustomIconCounter({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.white,
      mini: true,
      elevation: 5,
      shape: const CircleBorder(),
      child: Icon(icon),
    );
  }
}
