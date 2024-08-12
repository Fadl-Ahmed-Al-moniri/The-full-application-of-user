// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:bigcart/controller/home/pages/items/searchItem_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:bigcart/core/constant/imageasset.dart';
import 'package:bigcart/view/widget/home/txtfieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchitemsPage extends StatelessWidget {
  const SearchitemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SearchitemControllerImp controller = Get.put(SearchitemControllerImp());

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: AppColor.iconColor,
          size: 25,
        ),
        bottom: PreferredSize(
          preferredSize: Size(width, height / 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: const Icon(
                  color: AppColor.iconColor,
                  Icons.filter_list,
                  size: 25,
                ),
              ),
              SizedBox(
                width: width / 1.2,
                child: TxtField(
                  hintText: 'ابحث هنا',
                  // onTap: () => controller.toggleSuggestionsPage(),
                  // onEditingComplete: () => controller.toggleSuggestionsPage(),
                  // controller: controller.searchKye,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 50,
              height: 50,
              child: Image.asset(AppImageAsset.profile))
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        itemCount: controller.onItemofsearchList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 40,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: AppColor.white,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: width / 3.5,
                    width: width / 3.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColor.Gold,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            controller.onItemofsearchList[index].image!,
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                    top: 2,
                    right: 2,
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: controller.onItemofsearchList[index].isFavorite ==
                              true
                          ? AppColor.red
                          : AppColor.headlineSmallColor,
                    )),
                Positioned(
                  bottom: 40,
                  width: width,
                  child: Divider(),
                ),
                Positioned(
                  bottom: 10,
                  // width: width,
                  left: 10,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 22,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Text(
                    controller.onItemofsearchList[index].title!,
                    style: titleSearchofItem,
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 10,
                  child: Text(
                    controller.onItemofsearchList[index].suptitle!,
                    style: suptitleSearchofItem,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}
