import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/data/model/itemOfSearch_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image/image.dart' as img;

abstract class SearchitemController extends GetxController {}

class SearchitemControllerImp extends SearchitemController {
  List<Itemofsearch> onItemofsearchList = [
    Itemofsearch(
      title: "عنب خارجي",
      suptitle: '4000 الف ريال ',
      image: AppImageAsset.grapes,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب عاصمي",
      suptitle: ' 5000 الف ريال ',
      image: AppImageAsset.grapesRed,
      onTap: (index) {},
      isFavorite: true,
    ),
    Itemofsearch(
      title: 'عنب رازقي',
      suptitle: '3000 الف ريال ',
      image: AppImageAsset.grapesWhite,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب خارجي",
      suptitle: '4000 الف ريال ',
      image: AppImageAsset.grapes,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب عاصمي",
      suptitle: ' 5000 الف ريال ',
      image: AppImageAsset.grapesRed,
      onTap: (index) {},
      isFavorite: true,
    ),
    Itemofsearch(
      title: 'عنب رازقي',
      suptitle: '3000 الف ريال ',
      image: AppImageAsset.grapesWhite,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب خارجي",
      suptitle: '4000 الف ريال ',
      image: AppImageAsset.grapes,
      onTap: (index) {},
      isFavorite: false,
    ),
    Itemofsearch(
      title: "عنب عاصمي",
      suptitle: ' 5000 الف ريال ',
      image: AppImageAsset.grapesRed,
      onTap: (index) {},
      isFavorite: true,
    ),
    Itemofsearch(
      title: 'عنب رازقي',
      suptitle: '3000 الف ريال ',
      image: AppImageAsset.grapesWhite,
      onTap: (index) {},
      isFavorite: false,
    ),
  ];
    Color? containerColor;

}
