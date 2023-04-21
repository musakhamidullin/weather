part of 'forecast_bloc.dart';

@freezed
class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.getForecast({
    required String namePlace
  }) = _GetForecast;
}