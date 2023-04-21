import 'package:freezed_annotation/freezed_annotation.dart';

part 'rain.freezed.dart';

part 'rain.g.dart';

@freezed
class Rain with _$Rain {
  const factory Rain({@JsonKey(name: '3h') double? d3h}) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}
