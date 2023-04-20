import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var currentAddress = ''.obs;
  Position? currentPosition;

  @override
  void onInit() {
    _getCurrentPosition();
    super.onInit();
  }

  // ASKING PERMISSION FOR LOCATION
  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

// GETTING CURRENT LATITUDE AND LONGITUDE
  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      currentPosition = position;
      debugPrint(
          "current position : ${currentPosition!.latitude} , ${currentPosition!.longitude}");
      _getAddressFromLatLng(currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  // GETTING ADDRESS FROM LATITUDE AND LONGITUDE USING GEOCODING PACKAGE
  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(position.latitude, position.longitude)
        .then((List<Placemark> placeMarks) {
      Placemark place = placeMarks[0];

      currentAddress.value =
          '${place.street}, ${place.locality} ,${place.subThoroughfare} ,${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      debugPrint("current address : ${currentAddress.value}");
    }).catchError((e) {
      debugPrint(e);
    });
  }
}
