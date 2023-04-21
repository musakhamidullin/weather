// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SysForecast _$SysForecastFromJson(Map<String, dynamic> json) {
  return _SysForecast.fromJson(json);
}

/// @nodoc
mixin _$SysForecast {
  @JsonKey(name: 'pod')
  String? get pod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysForecastCopyWith<SysForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysForecastCopyWith<$Res> {
  factory $SysForecastCopyWith(
          SysForecast value, $Res Function(SysForecast) then) =
      _$SysForecastCopyWithImpl<$Res, SysForecast>;
  @useResult
  $Res call({@JsonKey(name: 'pod') String? pod});
}

/// @nodoc
class _$SysForecastCopyWithImpl<$Res, $Val extends SysForecast>
    implements $SysForecastCopyWith<$Res> {
  _$SysForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pod = freezed,
  }) {
    return _then(_value.copyWith(
      pod: freezed == pod
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SysForecastCopyWith<$Res>
    implements $SysForecastCopyWith<$Res> {
  factory _$$_SysForecastCopyWith(
          _$_SysForecast value, $Res Function(_$_SysForecast) then) =
      __$$_SysForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'pod') String? pod});
}

/// @nodoc
class __$$_SysForecastCopyWithImpl<$Res>
    extends _$SysForecastCopyWithImpl<$Res, _$_SysForecast>
    implements _$$_SysForecastCopyWith<$Res> {
  __$$_SysForecastCopyWithImpl(
      _$_SysForecast _value, $Res Function(_$_SysForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pod = freezed,
  }) {
    return _then(_$_SysForecast(
      pod: freezed == pod
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SysForecast implements _SysForecast {
  const _$_SysForecast({@JsonKey(name: 'pod') this.pod});

  factory _$_SysForecast.fromJson(Map<String, dynamic> json) =>
      _$$_SysForecastFromJson(json);

  @override
  @JsonKey(name: 'pod')
  final String? pod;

  @override
  String toString() {
    return 'SysForecast(pod: $pod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SysForecast &&
            (identical(other.pod, pod) || other.pod == pod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SysForecastCopyWith<_$_SysForecast> get copyWith =>
      __$$_SysForecastCopyWithImpl<_$_SysForecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SysForecastToJson(
      this,
    );
  }
}

abstract class _SysForecast implements SysForecast {
  const factory _SysForecast({@JsonKey(name: 'pod') final String? pod}) =
      _$_SysForecast;

  factory _SysForecast.fromJson(Map<String, dynamic> json) =
      _$_SysForecast.fromJson;

  @override
  @JsonKey(name: 'pod')
  String? get pod;
  @override
  @JsonKey(ignore: true)
  _$$_SysForecastCopyWith<_$_SysForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
