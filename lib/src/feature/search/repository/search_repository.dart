import 'package:weather/src/core/models/weather_data.dart';
import '../api/api.dart';

class SearchRepository {
  Future<WeatherDataModel>? getWeather({required String value}) async {
    final result = await DioApi().get<List<dynamic>>(value);

    if ((result?.cod ?? 0) != 200 || result == null) throw Exception('empty obj');

    return result;
  }
}
