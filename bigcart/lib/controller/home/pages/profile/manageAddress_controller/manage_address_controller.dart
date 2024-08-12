// // ignore_for_file: unused_local_variable

// import 'dart:convert';
// import 'package:bigcart/core/constant/color.dart';
// import 'package:bigcart/view/widget/home/page/profile/container_map.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geocoding/geocoding.dart';
// // import 'package:geocoding/geocoding.dart';
// import 'package:get/get.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:location/location.dart' as loc;
// // import 'package:location/location.dart';
// import 'package:http/http.dart' as http;

// abstract class ManageAddressesController extends GetxController {
//   addAddressInMap(BuildContext context);
//   getCurrentLocation();
//   addDestinationMarker(LatLng points);
//   getNameLoaction(double lat, double lan);
//   getRoute(LatLng destination);
// }

// class ManageAddressesControllerImp extends ManageAddressesController {
//   late List address = [
//     "Hail Street",
//     "Hadah ",
//     "60 street",
//   ];
//   bool result = false;
//   late MapController mapController;
//   loc.LocationData? currentLoczation;
//   List<LatLng> routePoint = [];
//   List<Marker> markers = [];
//   final String orsApiKey =
//       "5b3ce3597851110001cf6248ad3d36bfb3a34c3e8b90ad4bf0c788a4";

//   @override
//   addDestinationMarker(LatLng points) {
//     markers.add(Marker(
//         width: 80.0,
//         height: 80.0,
//         point: points,
//         child: const Icon(
//           Icons.location_on,
//           color: Colors.red,
//           size: 40,
//         )));
//     update();
//     getRoute(points);
//     update();
//   }

//   @override
//   getCurrentLocation() async {
//     var location = loc.Location();

//     try {
//       var userLocation = await location.getLocation();
//       result = await InternetConnectionChecker().hasConnection;
//       currentLoczation = userLocation;
//       update();
//       markers.add(Marker(
//           width: 80.0,
//           height: 80.0,
//           point: LatLng(userLocation.latitude!, userLocation.longitude!),
//           child: const Icon(
//             Icons.my_location,
//             color: AppColor.Gold,
//             size: 40,
//           )));
//       update();
//     } on Exception {
//       currentLoczation = null;
//     }
//     location.onLocationChanged.listen((loc.LocationData newLocation) {
//       currentLoczation = newLocation;
//       update();
//     });
//   }

//   @override
//   void onInit() {
//     getCurrentLocation();
//     mapController = MapController();
//     super.onInit();
//   }

//   @override
//   getNameLoaction(double lat, double lan) async {
//     // final coordinates = Coordinates(lat, lan);
//     // List<Address> addresses;
//     // Address first;
//     // addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
//     // first = addresses.first;
//     // update();
//     // print("${first.subLocality} : ${first.featureNam4e}");
//   }

//   @override
//   void dispose() {
//     mapController.dispose();
//     super.dispose();
//   }

//   getNameLoc(double latitude, double longitude) async {
//     List<Placemark> placemarks =
//         await placemarkFromCoordinates(latitude, longitude);
//     address.add(placemarks[0].subAdministrativeArea);

//     update();
//     print(address);
//     // print(placemarks);
//   }

//   @override
//   getRoute(LatLng destination) async {
//     if (currentLoczation == null) return;

//     if (result == true) {
//       update();

//       final start =
//           LatLng(currentLoczation!.latitude!, currentLoczation!.longitude!);
//       final response = await http.get(
//         Uri.parse(
//             'https://api.openrouteservice.org/v2/directions/driving-car?api_key=$orsApiKey&start=${start.longitude},${start.latitude}&end=${destination.longitude},${destination.latitude}'),
//       );

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         update();

//         // final List<dynamic> coords =
//         //     data['feature'][0]["geometry"]["coordinates"];
//         // print(coords);

//         // routePoint =
//         //     coords.map((coords) => LatLng(coords[1], coords[0])).toList();
//         // markers.add(Marker(
//         //     width: 80.0,
//         //     height: 80.0,
//         //     point: destination,
//         //     child: const Icon(
//         //       Icons.location_on,
//         //       color: Colors.red,
//         //       size: 40,
//         //     )));
//       } else {}
//     }
//   }

//   @override
//   addAddressInMap(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) => const ContainerMap(),
//     );
//   }
// }
