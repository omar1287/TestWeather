import 'package:weather_app/Weather/Domain/Entities/Weather.dart';

class Weather_Model extends weather {
  Weather_Model(
      super.id, super.cityname, super.main, super.description, super.pressure);

  factory Weather_Model.fromJson(Map<String, dynamic> json) =>
      Weather_Model(
          json["id"],
          json["name"],
        json["weather"][0]["main"],
        json["weather"][0]["description"],
        json["main"]["pressure"]

      );
}
