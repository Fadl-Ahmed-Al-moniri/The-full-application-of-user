import 'package:flutter/material.dart';

class ContainerAddresses extends StatelessWidget {
  const ContainerAddresses({super.key, required this.addressName});
  final String addressName;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(addressName),
    );
  }
}
