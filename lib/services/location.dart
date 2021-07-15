import 'package:geolocator/geolocator.dart';
import 'dart:math';

class LocationService {
  Position location;
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        forceAndroidLocationManager: true);
    longitude = num.parse(location.longitude.toStringAsFixed(4)).toDouble();
    latitude = num.parse(location.latitude.toStringAsFixed(4)).toDouble();
  }
}
