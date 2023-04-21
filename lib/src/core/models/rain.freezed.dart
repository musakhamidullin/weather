// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rain _$RainFromJson(Map<String, dynamic> json) {
  return _Rain.fromJson(json);
}

/// @nodoc
mixin _$Rain {
  @JsonKey(name: '3h')
  double? get d3h => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainCopyWith<Rain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainCopyWith<$Res> {
  factory $RainCopyWith(Rain value, $Res Function(Rain) then) =
      _$RainCopyWithImpl<$Res, Rain>;
  @useResult
  $Res call({@JsonKey(name: '3h') double? d3h});
}

/// @nodoc
class _$RainCopyWithImpl<$Res, $Val extends Rain>
    implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? d3h = freezed,
  }) {
    return _then(_value.copyWith(
      d3h: freezed == d3h
          ? _value.d3h
          : d3h // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RainCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$$_RainCopyWith(_$_Rain value, $Res Function(_$_Rain) then) =
      __$$_RainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '3h') double? d3h});
}

/// @nodoc
class __$$_RainCopyWithImpl<$Res> extends _$RainCopyWithImpl<$Res, _$_Rain>
    implements _$$_RainCopyWith<$Res> {
  __$$_RainCopyWithImpl(_$_Rain _value, $Res Function(_$_Rain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? d3h = freezed,
  }) {
    return _then(_$_Rain(
      d3h: freezed == d3h
          ? _value.d3h
          : d3h // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rain implements _Rain {
  const _$_Rain({@JsonKey(name: '3h') this.d3h});

  factory _$_Rain.fromJson(Map<String, dynamic> json) => _$$_RainFromJson(json);

  @override
  @JsonKey(name: '3h')
  final double? d3h;

  @override
  String toString() {
    return 'Rain(d3h: $d3h)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rain &&
            (identical(other.d3h, d3h) || other.d3h == d3h));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, d3h);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RainCopyWith<_$_Rain> get copyWith =>
      __$$_RainCopyWithImpl<_$_Rain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RainToJson(
      this,
    );
  }
}

abstract class _Rain implements Rain {
  const factory _Rain({@JsonKey(name: '3h') final double? d3h}) = _$_Rain;

  factory _Rain.fromJson(Map<String, dynamic> json) = _$_Rain.fromJson;

  @override
  @JsonKey(name: '3h')
  double? get d3h;
  @override
  @JsonKey(ignore: true)
  _$$_RainCopyWith<_$_Rain> get copyWith => throw _privateConstructorUsedError;
}
