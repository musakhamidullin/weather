// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastList _$ForecastListFromJson(Map<String, dynamic> json) {
  return _ForecastList.fromJson(json);
}

/// @nodoc
mixin _$ForecastList {
  @JsonKey(name: 'dt')
  int? get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  MainInfo? get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<Weather>? get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  Clouds? get clouds => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  Wind? get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  double? get pop => throw _privateConstructorUsedError;
  @JsonKey(name: 'sys')
  SysForecast? get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_txt')
  String? get dtTxt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  Rain? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastListCopyWith<ForecastList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastListCopyWith<$Res> {
  factory $ForecastListCopyWith(
          ForecastList value, $Res Function(ForecastList) then) =
      _$ForecastListCopyWithImpl<$Res, ForecastList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int? dt,
      @JsonKey(name: 'main') MainInfo? main,
      @JsonKey(name: 'weather') List<Weather>? weather,
      @JsonKey(name: 'clouds') Clouds? clouds,
      @JsonKey(name: 'wind') Wind? wind,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'pop') double? pop,
      @JsonKey(name: 'sys') SysForecast? sys,
      @JsonKey(name: 'dt_txt') String? dtTxt,
      @JsonKey(name: 'rain') Rain? rain});

  $MainInfoCopyWith<$Res>? get main;
  $CloudsCopyWith<$Res>? get clouds;
  $WindCopyWith<$Res>? get wind;
  $SysForecastCopyWith<$Res>? get sys;
  $RainCopyWith<$Res>? get rain;
}

/// @nodoc
class _$ForecastListCopyWithImpl<$Res, $Val extends ForecastList>
    implements $ForecastListCopyWith<$Res> {
  _$ForecastListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainInfo?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysForecast?,
      dtTxt: freezed == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainInfoCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainInfoCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $CloudsCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysForecastCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysForecastCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RainCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastListCopyWith<$Res>
    implements $ForecastListCopyWith<$Res> {
  factory _$$_ForecastListCopyWith(
          _$_ForecastList value, $Res Function(_$_ForecastList) then) =
      __$$_ForecastListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int? dt,
      @JsonKey(name: 'main') MainInfo? main,
      @JsonKey(name: 'weather') List<Weather>? weather,
      @JsonKey(name: 'clouds') Clouds? clouds,
      @JsonKey(name: 'wind') Wind? wind,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'pop') double? pop,
      @JsonKey(name: 'sys') SysForecast? sys,
      @JsonKey(name: 'dt_txt') String? dtTxt,
      @JsonKey(name: 'rain') Rain? rain});

  @override
  $MainInfoCopyWith<$Res>? get main;
  @override
  $CloudsCopyWith<$Res>? get clouds;
  @override
  $WindCopyWith<$Res>? get wind;
  @override
  $SysForecastCopyWith<$Res>? get sys;
  @override
  $RainCopyWith<$Res>? get rain;
}

/// @nodoc
class __$$_ForecastListCopyWithImpl<$Res>
    extends _$ForecastListCopyWithImpl<$Res, _$_ForecastList>
    implements _$$_ForecastListCopyWith<$Res> {
  __$$_ForecastListCopyWithImpl(
      _$_ForecastList _value, $Res Function(_$_ForecastList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
    Object? rain = freezed,
  }) {
    return _then(_$_ForecastList(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainInfo?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysForecast?,
      dtTxt: freezed == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastList implements _ForecastList {
  const _$_ForecastList(
      {@JsonKey(name: 'dt') this.dt,
      @JsonKey(name: 'main') this.main,
      @JsonKey(name: 'weather') final List<Weather>? weather,
      @JsonKey(name: 'clouds') this.clouds,
      @JsonKey(name: 'wind') this.wind,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'pop') this.pop,
      @JsonKey(name: 'sys') this.sys,
      @JsonKey(name: 'dt_txt') this.dtTxt,
      @JsonKey(name: 'rain') this.rain})
      : _weather = weather;

  factory _$_ForecastList.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastListFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int? dt;
  @override
  @JsonKey(name: 'main')
  final MainInfo? main;
  final List<Weather>? _weather;
  @override
  @JsonKey(name: 'weather')
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'clouds')
  final Clouds? clouds;
  @override
  @JsonKey(name: 'wind')
  final Wind? wind;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'pop')
  final double? pop;
  @override
  @JsonKey(name: 'sys')
  final SysForecast? sys;
  @override
  @JsonKey(name: 'dt_txt')
  final String? dtTxt;
  @override
  @JsonKey(name: 'rain')
  final Rain? rain;

  @override
  String toString() {
    return 'ForecastList(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt, rain: $rain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastList &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(_weather),
      clouds,
      wind,
      visibility,
      pop,
      sys,
      dtTxt,
      rain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastListCopyWith<_$_ForecastList> get copyWith =>
      __$$_ForecastListCopyWithImpl<_$_ForecastList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastListToJson(
      this,
    );
  }
}

abstract class _ForecastList implements ForecastList {
  const factory _ForecastList(
      {@JsonKey(name: 'dt') final int? dt,
      @JsonKey(name: 'main') final MainInfo? main,
      @JsonKey(name: 'weather') final List<Weather>? weather,
      @JsonKey(name: 'clouds') final Clouds? clouds,
      @JsonKey(name: 'wind') final Wind? wind,
      @JsonKey(name: 'visibility') final int? visibility,
      @JsonKey(name: 'pop') final double? pop,
      @JsonKey(name: 'sys') final SysForecast? sys,
      @JsonKey(name: 'dt_txt') final String? dtTxt,
      @JsonKey(name: 'rain') final Rain? rain}) = _$_ForecastList;

  factory _ForecastList.fromJson(Map<String, dynamic> json) =
      _$_ForecastList.fromJson;

  @override
  @JsonKey(name: 'dt')
  int? get dt;
  @override
  @JsonKey(name: 'main')
  MainInfo? get main;
  @override
  @JsonKey(name: 'weather')
  List<Weather>? get weather;
  @override
  @JsonKey(name: 'clouds')
  Clouds? get clouds;
  @override
  @JsonKey(name: 'wind')
  Wind? get wind;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'pop')
  double? get pop;
  @override
  @JsonKey(name: 'sys')
  SysForecast? get sys;
  @override
  @JsonKey(name: 'dt_txt')
  String? get dtTxt;
  @override
  @JsonKey(name: 'rain')
  Rain? get rain;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastListCopyWith<_$_ForecastList> get copyWith =>
      throw _privateConstructorUsedError;
}
