import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/config.dart';
import 'package:weather/src/core/models/weather_data.dart';

class DioSearchApi {
  DioSearchApi() {
    _dio = Dio();
  }
  late final Dio _dio;

  Future<WeatherDataModel?> getPlace<T>(String value) async {

    try {
      final response = await _dio.get(Config.searchUrl(value: value));

      if (response.statusCode != 200) throw Exception('error');

      log(WeatherDataModel.fromJson(response.data).toString());

      return WeatherDataModel.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
