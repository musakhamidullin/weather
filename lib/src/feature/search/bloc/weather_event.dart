part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.load() = _Load;

  const factory WeatherEvent.outPutToScreen({
    required String name,
  }) = _OutPutToScreen;

  const factory WeatherEvent.findPlace({required String value}) = _FindPlace;

  const factory WeatherEvent.failure() = _Failure;

  const factory WeatherEvent.refresh() = _Refresh;
}
