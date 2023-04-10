 import 'dart:convert';

import 'package:weather_app/Weather/Data/Model/Weather_Model.dart';
 import 'package:dio/dio.dart';
import 'package:weather_app/core/Utills/Constance.dart';
abstract class baseRemoteDataSource {


  Future<Weather_Model?> GetWeatherByCityName(String CityName);

 }
 class RemoteDataSource extends baseRemoteDataSource{
  @override
  Future<Weather_Model?> GetWeatherByCityName(String CityName)async {
try{

 final dio = Dio();
 final response = await dio.get('${Constance.baseUrl}/weather?q=${CityName}&appid=${Constance.apikey}');
 return  Weather_Model.fromJson(response.data);
}catch(e){
 return null;
}
  
  }

 }