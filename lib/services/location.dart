import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      longitude = position.longitude;
      //print(longitude);
      latitude = position.latitude;
      //print(latitude);
    } catch (e) {
      print(e + 'errrrrora');
    }
  }
}
