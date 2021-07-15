import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import "package:clima/services/location.dart";
import "package:clima/secureContent/secure_data.dart";
import "package:clima/services/networking.dart";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

void getLocation() async {
  LocationService location = LocationService();
  await location.getCurrentLocation();
  String URL =
      "https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$OWM_Key";

  NetworkHelper network = NetworkHelper(URL);
  dynamic data = await network.getData();

  print(data["name"]);
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
