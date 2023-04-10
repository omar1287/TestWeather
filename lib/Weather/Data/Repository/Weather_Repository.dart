import 'package:weather_app/Weather/Data/DataSource/GetWeather.dart';
import 'package:weather_app/Weather/Domain/Entities/Weather.dart';

abstract class baseWeatherRepositary{

  Future<weather> getWeatherByCityName(String cityname);

}
class WeatherRepositary implements baseWeatherRepositary{
  baseRemoteDataSource remoteDataSource;

  WeatherRepositary(this.remoteDataSource);

  @override
  Future<weather> getWeatherByCityName(String cityname) async{
   return (await remoteDataSource.GetWeatherByCityName(cityname))!;

  }

}