import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CustomAdsWidget extends StatelessWidget {
  const CustomAdsWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 4.5,
      margin: EdgeInsets.symmetric(vertical: width / 10),
      decoration: BoxDecoration(
          color: AppColor.adsColor, borderRadius: BorderRadius.circular(19)),
      child: Stack(
        children: [
          Positioned(
            width: width / 1.2,
            right: -140,
            bottom: -20,
            child: Image.asset(AppImageAsset.adsImage),
          ),
          Positioned(
              top: 30,
              left: width / 10,
              child: Text('منتجات طازجة',
                  style: Theme.of(context).textTheme.titleSmall)),
          Positioned(
              top: height / 12,
              left: width / 20,
              child: Text('تطلع من المزرعة وتجي لبابك', style: adscontent)),
          Positioned(
              bottom: height / 22,
              left: width / 20,
              child: MaterialButton(
                onPressed: () {},
                color: AppColor.adsButtonColor,
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'اطلب الان',
                  style: adsButtoncontent,
                ),
              ))
        ],
      ),
    );
  }
}
