part of 'weather_bloc.dart';

enum WeatherStatus {
  initial,
  searching,
  loading,
  success,
  failure,
  failureSearch
}

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(WeatherStatus.initial) WeatherStatus status,
    String? name,
    WeatherDataModel? data,
    WeatherDataForecast? forecast,
  }) = _WeatherState;
}
