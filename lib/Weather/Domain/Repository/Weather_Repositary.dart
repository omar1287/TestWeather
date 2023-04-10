import 'package:weather_app/Weather/Domain/Entities/Weather.dart';

abstract class Weather_RepoSitary{

   Future<weather> GetWeatherByCityName(String CityName);

}