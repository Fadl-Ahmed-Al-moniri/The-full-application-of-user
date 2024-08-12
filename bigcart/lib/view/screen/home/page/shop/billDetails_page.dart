// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bigcart/controller/home/pages/shop/billDetails_controller.dart';
import 'package:bigcart/core/constant/appthem.dart';
import 'package:bigcart/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillDetails extends StatelessWidget {
  const BillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    BillControllerImp controller = Get.put(BillControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الفاتوره",
          style: titleofAppbar,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        children: [
          Container(
            height: height,
            // width: width / 2,
            child: ListView.builder(
              itemCount: controller.billData.length,
              itemBuilder: (context, index) {
                return Card(
                  color: AppColor.white,
                  child: Container(
                    height: height / 6,
                    width: width / 2,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                            right: 20,
                            top: 10,
                            child: Text(
                              ' تفاصيل الفاتورة',
                              style: titleofAppbar,
                            )),
                        // Positioned(width: width, top: 40, child: Divider()),
                        Positioned(
                          child: Text(
                            'الكمية : ${controller.billData[index]['count']}',
                            style: hintText,
                            textAlign: TextAlign.right,
                          ),
                          top: 50,
                          right: 20,
                        ),
                        Positioned(
                          child: Text(
                            'الصنف: ${controller.billData[index]['name']}',
                            style: hintText,
                          ),
                          top: 50,
                          // width: width / 1,
                          // right: ,
                        ),
                        Positioned(
                          child: Text(
                            'السعر: ${controller.billData[index]['price']}',
                            style: hintText,
                          ),
                          top: 50,
                          left: 20,
                        ),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Text(
                            'الإجمالي:   ${controller.billData[index]['price']}',
                            style: titleofAppbar,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
