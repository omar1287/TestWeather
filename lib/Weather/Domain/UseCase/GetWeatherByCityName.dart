import 'package:weather_app/Weather/Domain/Entities/Weather.dart';
import 'package:weather_app/Weather/Domain/Repository/Weather_Repositary.dart';

class GetWeatherByCityName {
  Weather_RepoSitary Weather;

  GetWeatherByCityName(this.Weather);

  Future<weather> execute(String CityName) async {
    return await Weather.GetWeatherByCityName(CityName);
  }
}
