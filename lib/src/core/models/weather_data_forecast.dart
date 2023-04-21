import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';
import 'forecast.dart';

part 'weather_data_forecast.freezed.dart';
part 'weather_data_forecast.g.dart';

@freezed
class WeatherDataForecast with _$WeatherDataForecast {
  const factory WeatherDataForecast({
    @JsonKey(name: 'cod') String? cod,
    @JsonKey(name: 'message') int? message,
    @JsonKey(name: 'cnt') int? cnt,
    @JsonKey(name: 'list') List<ForecastList>? list,
    @JsonKey(name: 'city') City? city,
  }) = _WeatherdataForecast;

  factory WeatherDataForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataForecastFromJson(json);
}
