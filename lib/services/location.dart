import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 44.34;
  double longitude = 10.99;

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 100,
  );

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
      print('Latitude: $latitude, Longitude: $longitude');
    } catch (e) {
      print('Error: $e');
    }
  }
}
