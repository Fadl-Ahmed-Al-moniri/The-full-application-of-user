import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginImage extends StatelessWidget {
  const LoginImage(
      {super.key,
      required this.imageName,
      required this.txt,
      required this.height});
  final String imageName;
  final String txt;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            imageName,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: Text(
                txt,
                style: Theme.of(context).textTheme.titleSmall,
              ))
        ],
      ),
    );
  }
}
