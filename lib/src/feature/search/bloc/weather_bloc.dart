import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/models/weather_data.dart';
import 'package:weather/src/feature/search/repository/search_repository.dart';

import '../../../core/models/weather_data_forecast.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  WeatherBloc({
    required this.searchRepository,
  }) : super(WeatherState()) {
    on<_FindPlace>(_findPlace);
    on<_OutPutToScreen>(_outPutToScreen);
  }

  final SearchRepository searchRepository;

  Future<void> _findPlace(_FindPlace event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(status: WeatherStatus.loading));
    try {
      final weather = await searchRepository.getWeather(value: event.value);

      emit(state.copyWith(
        status: WeatherStatus.success,
        data: weather,
      ));
    } catch (e) {
      emit(state.copyWith(status: WeatherStatus.failure));
    }
  }

  Future<void> _outPutToScreen(
      _OutPutToScreen event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(name: event.value, status: WeatherStatus.searching));
  }
}
