import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import "../services/location.dart";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

void getLocation() async {
  LocationService location = LocationService();
  await location.getCurrentLocation();
  print(
      'Location is latitude:${location.latitude} & longitude:${location.longitude}');
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Get Location"),
          onPressed: getLocation,
        ),
      ),
    );
  }
}
