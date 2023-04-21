import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/config.dart';

import '../../../core/models/weather_data_forecast.dart';

class DioForecastApi {
  DioForecastApi() {
    _dio = Dio();
  }

  late final Dio _dio;

  Future<WeatherDataForecast?> getForecast<T>(String value) async {
    try {
      final response = await _dio.get(Config.forecastUrl(value: value));

      return WeatherDataForecast.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
