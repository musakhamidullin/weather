import 'package:intl/intl.dart';

import '../../../core/models/forecast.dart';
import '../../../core/models/weather_data_forecast.dart';
import '../api/forecast_api.dart';
import '../model/forecast_model.dart';

class ForecastRepository {
  Future<List<Forecast>> getForecast({required String value}) async {
    final request = await DioForecastApi().getForecast<List<dynamic>>(value);

    if (request == null) throw Exception();

    final list = groupBy(obj: request);

    return list;
  }

  // this method grouping forecast for each date
  // example
  // "Friday, April 21" - ["2023-04-21 18:00:00", "2023-04-21 21:00:00"]

  List<Forecast> groupBy({required WeatherDataForecast obj}) {
    Map<String, List<ForecastList>> map = {};
    final List<Forecast> list = [];
    if (obj.list?.isNotEmpty ?? false) {
      for (var i = 0; i < obj.list!.length; i++) {
        final date = DateFormat.MMMMEEEEd()
            .format(DateTime.parse(obj.list![i].dtTxt as String));

        map[date] = obj.list!
            .where((element) =>
                DateFormat.MMMMEEEEd().format(DateTime.parse(element.dtTxt!)) ==
                date)
            .toList();
      }
    }

    final keys = [...map.keys];

    // get max and min values for sort
    double min = 0;
    double max = 0;

    for (var element in keys) {
      final weatherList = map[element];

      min = weatherList![0].main!.tempMin!;
      max = weatherList[0].main!.tempMin!;

      for (var i = 0; i < list.length; i++) {
        if (min > weatherList[i].main!.tempMin!) {
          min = weatherList[i].main!.tempMin!;
        }

        if (max < weatherList[i].main!.tempMax!) {
          max = weatherList[i].main!.tempMax!;
        }
      }

      list.add(Forecast(
          date: element, list: map[element]!, maxTemp: max, minTemp: min));
    }

    // sorting by ascending
    list.sort(
      (a, b) => a.minTemp.compareTo(b.minTemp),
    );

    return list;
  }
}
