import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  const factory Wind({
    @JsonKey(name: 'speed') double? speed,
    @JsonKey(name: 'deg') double? deg,
    @JsonKey(name: 'gust') double? gust,
  }) = _Wind;
  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
