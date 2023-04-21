part of 'forecast_bloc.dart';

@freezed
class ForecastState with _$ForecastState {
  const factory ForecastState({
    @Default([])
    List<Forecast> data,
    WeatherStatus? status,
  }) = _ForecastState;
}
