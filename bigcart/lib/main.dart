// ignore_for_file: unused_local_variable
import 'package:bigcart/controller/app_controller.dart';
import 'package:bigcart/core/bunding/initalbunding.dart';
import 'package:bigcart/core/services/services.dart';
import 'package:bigcart/routes.dart';
import 'package:bigcart/view/screen/splashScreen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.put(MyServices());
    AppController controllar = Get.put(AppController());
    return GetMaterialApp(
      initialBinding: InitalBunding(),
      getPages: routes,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: controllar.appTheme,
      // home: HomePage(),
    );
  }
}
