import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/data/model/itemofAnimls_model.dart';
import 'package:get/get.dart';

class SelectanimlsControllerImp extends GetxController {
  late String titlename;
  List<ItemofanimlsModel> onItemofanimlsModelList = [
    ItemofanimlsModel(
      title: 'الأبقار',
      image: AppImageAsset.cow,
      isFavorite: true,
    ),
    ItemofanimlsModel(
      title: 'الأغنام ',
      image: AppImageAsset.sheep,
      isFavorite: false,
    ),
    ItemofanimlsModel(
      title: 'الدواجن ',
      image: AppImageAsset.chicken,
      isFavorite: false,
    ),
    ItemofanimlsModel(
      title: 'البيض و الالبان ',
      image: AppImageAsset.eggsDairyItem,
      isFavorite: false,
    ),
  ];

  clickMoreItem(int index, String name) {
        
  }

  void addToCart() {
    // منطق إضافة المنتج إلى السلة (مثال: استخدام Provider أو GetStorage)
  }

  void addToFavorites() {
    // منطق إضافة المنتج إلى المفضلات
  }
  @override
  void onInit() {
    titlename = Get.arguments;
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // bool isloding = true;
}
