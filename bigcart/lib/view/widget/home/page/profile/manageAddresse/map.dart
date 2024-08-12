// // ignore_for_file: must_be_immutable


// import 'package:bigcart/controller/home/pages/profile/manage_address_controller.dart';
// import 'package:bigcart/core/constant/color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:get/get.dart';
// import 'package:latlong2/latlong.dart';

// class LocationMap extends StatelessWidget {
//   const LocationMap({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.lazyPut(
//       () => ManageAddressesControllerImp(),
//     );
//     // print(currentLoczation);
//     return GetBuilder<ManageAddressesControllerImp>(builder: (controller) {
//       return controller.currentLoczation == null
//           ? const Center(child: CircularProgressIndicator())
//           : controller.result == true
//               ? Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: SizedBox(
//                     height: double.infinity,
//                     child: FlutterMap(
//                         mapController: controller.mapController,
//                         options: MapOptions(
//                             initialCenter: LatLng(
//                                 controller.currentLoczation!.latitude!,
//                                 controller.currentLoczation!.longitude!),
//                             initialZoom: 15.0,
//                             onTap: (tapPosition, point) {
//                               controller.getNameLoc(
//                                   point.latitude, point.longitude);
//                               // getNameLoaction(point.latitude, point.longitude);
//                               // print("============== ${point.latitude}");
//                               controller.addDestinationMarker(point);
//                             }),
//                         children: [
//                           TileLayer(
//                             userAgentPackageName:
//                                 'dev.fleaflet.flutter_map.example',
//                             urlTemplate:
//                                 "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
//                             subdomains: const ['a', 'b', 'c'],
//                           ),
//                           MarkerLayer(
//                             markers: controller.markers,
//                           ),
//                           PolylineLayer(polylines: [
//                             Polyline(
//                                 points: controller.routePoint,
//                                 strokeWidth: 4.0,
//                                 color: AppColor.halflightGreen),
//                           ]),
//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Align(
//                               alignment: Alignment.bottomRight,
//                               child: FloatingActionButton(
//                                   backgroundColor:
//                                       AppColor.backGroundColor,
//                                   child: const Icon(
//                                     Icons.location_on_sharp,
//                                     color: AppColor.middleLightGreen,
//                                   ),
//                                   onPressed: () {
//                                     if (controller.currentLoczation != null) {
//                                       controller.mapController.move(
//                                           LatLng(
//                                               controller
//                                                   .currentLoczation!.latitude!,
//                                               controller.currentLoczation!
//                                                   .longitude!),
//                                           15.0);
//                                     }
//                                   }),
//                             ),
//                           )
//                         ]),
//                   ),
//                 )
//               : Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: double.infinity,
//                   color: Colors.grey.shade300,
//                   child: const Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.signal_wifi_connected_no_internet_4,
//                           color: Colors.red,
//                           size: 40,
//                         ),
//                         SizedBox(
//                           height: 16,
//                         ),
//                      Text(
                        
//                            "لا يوجد اتصال بالانترنت",
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//     });
//   }
// }
