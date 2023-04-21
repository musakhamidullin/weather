import '../../../core/models/forecast.dart';

class Forecast {
  Forecast(
      {required this.date,
      required this.list,
      required this.maxTemp,
      required this.minTemp});

  final String date;
  final List<ForecastList> list;

  final double maxTemp;
  final double minTemp;
}
