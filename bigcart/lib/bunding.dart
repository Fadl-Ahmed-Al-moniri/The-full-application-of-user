import 'package:bigcart/view/screen/splashScreen_page.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
  }
}
