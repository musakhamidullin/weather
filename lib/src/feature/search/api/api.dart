import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/src/core/models/weather_data.dart';

class DioApi {
  DioApi() {
    _dio = Dio();
  }

  late final Dio _dio;

  Future<WeatherDataModel?> get<T>(String value) async {

    try {
      final response = await _dio.get('https://api.openweathermap.org/data/2.5/weather?q=$value&appid=b0f89ea3da6f0039c5d5b733904697fb');

      if (response.statusCode != 200) throw Exception('error');

      log(WeatherDataModel.fromJson(response.data).toString());

      return WeatherDataModel.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
