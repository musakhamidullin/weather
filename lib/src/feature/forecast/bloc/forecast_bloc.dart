import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/models/weather_data_forecast.dart';
import 'package:weather/src/feature/forecast/model/forecast_model.dart';
import 'package:weather/src/feature/forecast/repository/forecast_repository.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

import '../../../core/models/forecast.dart';

part 'forecast_event.dart';
part 'forecast_state.dart';
part 'forecast_bloc.freezed.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  ForecastBloc(this.forecastRepository) : super(ForecastState()) {
    on<_GetForecast>(_getForecast);
  }

  final ForecastRepository forecastRepository;

  FutureOr<void> _getForecast(
      _GetForecast event, Emitter<ForecastState> emit) async {
    emit(state.copyWith(status: WeatherStatus.loading));
    try {
      final request =
          await forecastRepository.getForecast(value: event.namePlace);

      emit(state.copyWith(data: request, status: WeatherStatus.success));
    } catch (e) {
      emit(state.copyWith(status: WeatherStatus.failure));
    }
  }
}
