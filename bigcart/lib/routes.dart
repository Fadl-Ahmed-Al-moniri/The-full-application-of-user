import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/midllware/mymidllware.dart';
import 'package:bigcart/view/screen/auth/confirm_password.dart';
import 'package:bigcart/view/screen/auth/done_confirm_password.dart';
import 'package:bigcart/view/screen/auth/forget_password.dart';
import 'package:bigcart/view/screen/auth/login_screen.dart';
import 'package:bigcart/view/screen/auth/signup_screen.dart';
import 'package:bigcart/view/screen/home/home_page.dart';
import 'package:bigcart/view/screen/home/page/items/typeofAnimls_page.dart';
import 'package:bigcart/view/screen/home/page/shop/animalDetails_page.dart';
import 'package:bigcart/view/screen/home/page/shop/billDetails_page.dart';
import 'package:bigcart/view/screen/home/page/shop/bill_detailsConfirim_page.dart';
import 'package:bigcart/view/screen/home/page/shop/productDetails_page.dart';
import 'package:bigcart/view/screen/home/page/profile/aboutMe/aboutMe_page.dart';
import 'package:bigcart/view/screen/home/page/profile/order/order_page.dart';
import 'package:bigcart/view/screen/home/page/profile/manageAddresse/manage_addresses.dart';
import 'package:bigcart/view/screen/home/page/profile/profile.dart';
import 'package:bigcart/view/screen/home/page/items/searchItem_page.dart';
import 'package:bigcart/view/screen/home/page/items/selectAnimls_page.dart';
import 'package:bigcart/view/screen/home/page/items/splashscreenanimls_page.dart';
import 'package:bigcart/view/screen/home/page/items/typesOfItems_page.dart';
import 'package:bigcart/view/screen/home/page/shop/shopping_page.dart';
import 'package:bigcart/view/screen/onboarding.dart';
import 'package:bigcart/view/screen/splashScreen_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  //Auth
  GetPage(
    name: "/",
    page: () => SplashScreen(),
    middlewares: [MymiDllWare()],
  ),
  GetPage(
    name: AppRout.OnBoarding,
    page: () => const Onboarding(),
  ),
  GetPage(name: AppRout.login, page: () => const LoginScreen()),
  GetPage(name: AppRout.confirmpassword, page: () => const ConfirmPassWord()),
  GetPage(name: AppRout.signup, page: () => const SignUpScreen()),
  GetPage(name: AppRout.forgetpassword, page: () => const ForgetPassWord()),
  GetPage(name: AppRout.homepage, page: () => const HomePage()),
  GetPage(name: AppRout.SearchitemsPage, page: () => const SearchitemsPage()),
  GetPage(name: AppRout.myProfile, page: () => const ProfileUser()),
  GetPage(name: AppRout.manageAddresses, page: () => const ManageAddresses()),
  GetPage(name: AppRout.orderPage, page: () => const OrderListPage()),
  GetPage(name: AppRout.aboutMe, page: () => const AboutmePage()),
  GetPage(
    name: AppRout.typesofItemsPage,
    page: () => const TypesofitemsPage(),
  ),
  GetPage(
      name: AppRout.splashScreenAnimlsPpage,
      page: () => const SplashscreenanmilsPage()),
  GetPage(name: AppRout.selectAnimlsPage, page: () => const SelectanimlsPage()),
  GetPage(name: AppRout.shoppingPage, page: () => const ShoppingCartPage()),
  GetPage(
      name: AppRout.doneConfirmPassWordPage,
      page: () => const DoneConfirmPassWord()),
  GetPage(name: AppRout.productDetailsPage, page: () => const ProductDetails()),
  GetPage(name: AppRout.animalDetailsPage, page: () => const SheepDetails()),
  GetPage(name: AppRout.billDetailsPage, page: () => const BillDetails()),
  GetPage(name: AppRout.typeofAnimlsPage, page: () => const TypeofAnimlsPage()),
  GetPage(
      name: AppRout.billDetailsConfirimPage,
      page: () => const BillDetailsConfirmPage())
];
