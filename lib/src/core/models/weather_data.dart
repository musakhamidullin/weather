import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/models/main_info.dart';
import 'package:weather/src/core/models/weather.dart';

import 'clouds.dart';
import 'coord.dart';
import 'sys.dart';
import 'wind.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
class WeatherDataModel with _$WeatherDataModel {
  const factory WeatherDataModel({
    @JsonKey(name: 'coord')
    Coord? coord,
    @JsonKey(name: 'weather')
    List<Weather>? weather,
    @JsonKey(name: 'base')
    String? base,
    @JsonKey(name: 'main')
    MainInfo? main,
    @JsonKey(name: 'visibility')
    int? visibility,
    @JsonKey(name: 'wind')
    Wind? wind,
    @JsonKey(name: 'clouds')
    Clouds? clouds,
    @JsonKey(name: 'dt')
    int? dt,
    @JsonKey(name: 'sys')
    Sys? sys,
    @JsonKey(name: 'timezone')
    int? timezone,
    @JsonKey(name: 'id')
    int? id,
    @JsonKey(name: 'name')
    String? name,
    @JsonKey(name: 'cod')
    int? cod,
  }) = _WeatherDataModel;

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) => _$WeatherDataModelFromJson(json);



}
