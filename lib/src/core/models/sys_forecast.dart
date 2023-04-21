import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys_forecast.freezed.dart';
part 'sys_forecast.g.dart';

@freezed
class SysForecast with _$SysForecast {
  const factory SysForecast({
    @JsonKey(name: 'pod') String? pod,
  }) = _SysForecast;

  factory SysForecast.fromJson(Map<String, dynamic> json) =>
      _$SysForecastFromJson(json);
}
