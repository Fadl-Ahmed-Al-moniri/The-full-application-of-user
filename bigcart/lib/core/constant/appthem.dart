// ignore_for_file: prefer_const_constructors

import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';

TextStyle adscontent = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: AppColor.white.withAlpha(250),
  fontFamily: 'Almarai',
);

TextStyle adsButtoncontent = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: AppColor.white.withAlpha(250),
  fontFamily: 'Almarai',
);
TextStyle lableStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20,
  fontFamily: 'Almarai',
);
TextStyle titleSearchofItem = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 12,
  fontFamily: 'Almarai',
);
TextStyle titleselectAnimlsofItem = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  fontFamily: 'Poppins',
  color: AppColor.headlineSmallColor
);

TextStyle suptitleSearchofItem = TextStyle(
  fontWeight: FontWeight.w300,
  fontSize: 12,
  fontFamily: 'Almarai',
);
TextStyle hintText = TextStyle(
  color: AppColor.hintText,
  fontWeight: FontWeight.w500,
  fontSize: 14,
  fontFamily: 'Poppins',
);
TextStyle hintTexttow = TextStyle(
  color: AppColor.hintText,
  fontWeight: FontWeight.w300,
  fontSize: 14,
  fontFamily: 'Poppins',
);

TextStyle itemlableStyle = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColor.Black);
TextStyle titleofOrderAppbar = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: AppColor.titleofOrderAabbarColor);
TextStyle textofOrderButton = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColor.Black);
TextStyle textofOrderItem = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColor.Black);
TextStyle textofUsernameLable = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: AppColor.Black);
TextStyle textofUsername = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColor.Black);
    TextStyle titleofAppbar = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: AppColor.Black);
    TextStyle textofSplashScreen = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.w400,
    fontSize: 40,
    color: AppColor.Black);

ThemeData themeArabic = ThemeData(
  // fontFamily: "Cairo",
  cardColor: AppColor.Black,

  iconTheme: IconThemeData(color: AppColor.iconColor, size: 25),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: AppColor.Black),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 30,
      fontFamily: 'Almarai',
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 30,
      color: AppColor.white,
      fontFamily: 'Almarai',
    ),
    displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: 'Almarai',
        color: AppColor.linkColor),
    headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
    headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: 'Almarai',
        color: AppColor.headlineSmallColor),
    bodySmall: TextStyle(
        color: AppColor.halfgray,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 15),
    labelLarge: TextStyle(
        fontFamily: 'Almarai',
        fontWeight: FontWeight.w800,
        fontSize: 17,
        color: AppColor.white),
    labelSmall: TextStyle(
      // height: 2,
      fontFamily: 'Poppins',
      color: AppColor.labelSmallcolor,
      fontWeight: FontWeight.w500,
      fontSize: 15,

    ),
    labelMedium: TextStyle(
      fontFamily: 'Poppins',
      color: AppColor.Black,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
