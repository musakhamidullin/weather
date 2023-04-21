import 'package:flutter/material.dart';
import 'package:weather/src/core/models/weather_data.dart';

import '../api/search_api.dart';

class SearchRepository {
  Future<WeatherDataModel> getWeather({required String value}) async {

    final request = await DioSearchApi().getPlace<List<dynamic>>(value).onError((error, stackTrace){
      debugPrint(error.toString());
      return;
    });

    if(request == null) throw Exception();

    return request;
  }
}
