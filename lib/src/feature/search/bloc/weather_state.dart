part of 'weather_bloc.dart';

enum WeatherStatus{
  initial,
  loading,
  success,
  failure,
  failureSearch
}

@freezed 
class WeatherState with _$WeatherState{

  const factory WeatherState({
    @Default(WeatherStatus.initial)
    WeatherStatus status,
    IconData? icon,
    
    WeatherDataModel? data
  }) = _WeatherState;
}