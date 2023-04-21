// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_data_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDataForecast _$WeatherDataForecastFromJson(Map<String, dynamic> json) {
  return _WeatherdataForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherDataForecast {
  @JsonKey(name: 'cod')
  String? get cod => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  int? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'cnt')
  int? get cnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<ForecastList>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  City? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataForecastCopyWith<WeatherDataForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataForecastCopyWith<$Res> {
  factory $WeatherDataForecastCopyWith(
          WeatherDataForecast value, $Res Function(WeatherDataForecast) then) =
      _$WeatherDataForecastCopyWithImpl<$Res, WeatherDataForecast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cod') String? cod,
      @JsonKey(name: 'message') int? message,
      @JsonKey(name: 'cnt') int? cnt,
      @JsonKey(name: 'list') List<ForecastList>? list,
      @JsonKey(name: 'city') City? city});

  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$WeatherDataForecastCopyWithImpl<$Res, $Val extends WeatherDataForecast>
    implements $WeatherDataForecastCopyWith<$Res> {
  _$WeatherDataForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastList>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherdataForecastCopyWith<$Res>
    implements $WeatherDataForecastCopyWith<$Res> {
  factory _$$_WeatherdataForecastCopyWith(_$_WeatherdataForecast value,
          $Res Function(_$_WeatherdataForecast) then) =
      __$$_WeatherdataForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cod') String? cod,
      @JsonKey(name: 'message') int? message,
      @JsonKey(name: 'cnt') int? cnt,
      @JsonKey(name: 'list') List<ForecastList>? list,
      @JsonKey(name: 'city') City? city});

  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_WeatherdataForecastCopyWithImpl<$Res>
    extends _$WeatherDataForecastCopyWithImpl<$Res, _$_WeatherdataForecast>
    implements _$$_WeatherdataForecastCopyWith<$Res> {
  __$$_WeatherdataForecastCopyWithImpl(_$_WeatherdataForecast _value,
      $Res Function(_$_WeatherdataForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_WeatherdataForecast(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastList>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherdataForecast implements _WeatherdataForecast {
  const _$_WeatherdataForecast(
      {@JsonKey(name: 'cod') this.cod,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'cnt') this.cnt,
      @JsonKey(name: 'list') final List<ForecastList>? list,
      @JsonKey(name: 'city') this.city})
      : _list = list;

  factory _$_WeatherdataForecast.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherdataForecastFromJson(json);

  @override
  @JsonKey(name: 'cod')
  final String? cod;
  @override
  @JsonKey(name: 'message')
  final int? message;
  @override
  @JsonKey(name: 'cnt')
  final int? cnt;
  final List<ForecastList>? _list;
  @override
  @JsonKey(name: 'list')
  List<ForecastList>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'city')
  final City? city;

  @override
  String toString() {
    return 'WeatherDataForecast(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherdataForecast &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherdataForecastCopyWith<_$_WeatherdataForecast> get copyWith =>
      __$$_WeatherdataForecastCopyWithImpl<_$_WeatherdataForecast>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherdataForecastToJson(
      this,
    );
  }
}

abstract class _WeatherdataForecast implements WeatherDataForecast {
  const factory _WeatherdataForecast(
      {@JsonKey(name: 'cod') final String? cod,
      @JsonKey(name: 'message') final int? message,
      @JsonKey(name: 'cnt') final int? cnt,
      @JsonKey(name: 'list') final List<ForecastList>? list,
      @JsonKey(name: 'city') final City? city}) = _$_WeatherdataForecast;

  factory _WeatherdataForecast.fromJson(Map<String, dynamic> json) =
      _$_WeatherdataForecast.fromJson;

  @override
  @JsonKey(name: 'cod')
  String? get cod;
  @override
  @JsonKey(name: 'message')
  int? get message;
  @override
  @JsonKey(name: 'cnt')
  int? get cnt;
  @override
  @JsonKey(name: 'list')
  List<ForecastList>? get list;
  @override
  @JsonKey(name: 'city')
  City? get city;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherdataForecastCopyWith<_$_WeatherdataForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
