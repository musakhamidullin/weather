import 'package:weather/src/core/models/weather_data.dart';

import '../api/api.dart';

class SearchRepository {
  Future<WeatherDataModel> getWeather({required String value}) async {

    final request = await DioApi().get<List<dynamic>>(value);

    if(request == null) throw Exception();

    return request;
  }
}
