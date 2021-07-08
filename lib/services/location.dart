import 'package:geolocator/geolocator.dart';

class LocationService {
  Position location;
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    longitude = location.longitude;
    latitude = location.latitude;
  }
}
