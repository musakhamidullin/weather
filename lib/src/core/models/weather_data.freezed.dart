// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDataModel _$WeatherDataModelFromJson(Map<String, dynamic> json) {
  return _WeatherDataModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDataModel {
  @JsonKey(name: 'coord')
  Coord? get coord => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<Weather>? get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'base')
  String? get base => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  MainInfo? get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  Wind? get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  Clouds? get clouds => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt')
  int? get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sys')
  Sys? get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  int? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int? get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataModelCopyWith<WeatherDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataModelCopyWith<$Res> {
  factory $WeatherDataModelCopyWith(
          WeatherDataModel value, $Res Function(WeatherDataModel) then) =
      _$WeatherDataModelCopyWithImpl<$Res, WeatherDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'coord') Coord? coord,
      @JsonKey(name: 'weather') List<Weather>? weather,
      @JsonKey(name: 'base') String? base,
      @JsonKey(name: 'main') MainInfo? main,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'wind') Wind? wind,
      @JsonKey(name: 'clouds') Clouds? clouds,
      @JsonKey(name: 'dt') int? dt,
      @JsonKey(name: 'sys') Sys? sys,
      @JsonKey(name: 'timezone') int? timezone,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(ignore: true) int? cod});

  $CoordCopyWith<$Res>? get coord;
  $MainInfoCopyWith<$Res>? get main;
  $WindCopyWith<$Res>? get wind;
  $CloudsCopyWith<$Res>? get clouds;
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class _$WeatherDataModelCopyWithImpl<$Res, $Val extends WeatherDataModel>
    implements $WeatherDataModelCopyWith<$Res> {
  _$WeatherDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_value.copyWith(
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainInfo?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $CoordCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
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
  $SysCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $SysCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherDataModelCopyWith<$Res>
    implements $WeatherDataModelCopyWith<$Res> {
  factory _$$_WeatherDataModelCopyWith(
          _$_WeatherDataModel value, $Res Function(_$_WeatherDataModel) then) =
      __$$_WeatherDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'coord') Coord? coord,
      @JsonKey(name: 'weather') List<Weather>? weather,
      @JsonKey(name: 'base') String? base,
      @JsonKey(name: 'main') MainInfo? main,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'wind') Wind? wind,
      @JsonKey(name: 'clouds') Clouds? clouds,
      @JsonKey(name: 'dt') int? dt,
      @JsonKey(name: 'sys') Sys? sys,
      @JsonKey(name: 'timezone') int? timezone,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(ignore: true) int? cod});

  @override
  $CoordCopyWith<$Res>? get coord;
  @override
  $MainInfoCopyWith<$Res>? get main;
  @override
  $WindCopyWith<$Res>? get wind;
  @override
  $CloudsCopyWith<$Res>? get clouds;
  @override
  $SysCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$_WeatherDataModelCopyWithImpl<$Res>
    extends _$WeatherDataModelCopyWithImpl<$Res, _$_WeatherDataModel>
    implements _$$_WeatherDataModelCopyWith<$Res> {
  __$$_WeatherDataModelCopyWithImpl(
      _$_WeatherDataModel _value, $Res Function(_$_WeatherDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_$_WeatherDataModel(
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainInfo?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds?,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDataModel implements _WeatherDataModel {
  const _$_WeatherDataModel(
      {@JsonKey(name: 'coord') this.coord,
      @JsonKey(name: 'weather') final List<Weather>? weather,
      @JsonKey(name: 'base') this.base,
      @JsonKey(name: 'main') this.main,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'wind') this.wind,
      @JsonKey(name: 'clouds') this.clouds,
      @JsonKey(name: 'dt') this.dt,
      @JsonKey(name: 'sys') this.sys,
      @JsonKey(name: 'timezone') this.timezone,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(ignore: true) this.cod})
      : _weather = weather;

  factory _$_WeatherDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDataModelFromJson(json);

  @override
  @JsonKey(name: 'coord')
  final Coord? coord;
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
  @JsonKey(name: 'base')
  final String? base;
  @override
  @JsonKey(name: 'main')
  final MainInfo? main;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'wind')
  final Wind? wind;
  @override
  @JsonKey(name: 'clouds')
  final Clouds? clouds;
  @override
  @JsonKey(name: 'dt')
  final int? dt;
  @override
  @JsonKey(name: 'sys')
  final Sys? sys;
  @override
  @JsonKey(name: 'timezone')
  final int? timezone;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(ignore: true)
  final int? cod;

  @override
  String toString() {
    return 'WeatherDataModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDataModel &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      const DeepCollectionEquality().hash(_weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDataModelCopyWith<_$_WeatherDataModel> get copyWith =>
      __$$_WeatherDataModelCopyWithImpl<_$_WeatherDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDataModelToJson(
      this,
    );
  }
}

abstract class _WeatherDataModel implements WeatherDataModel {
  const factory _WeatherDataModel(
      {@JsonKey(name: 'coord') final Coord? coord,
      @JsonKey(name: 'weather') final List<Weather>? weather,
      @JsonKey(name: 'base') final String? base,
      @JsonKey(name: 'main') final MainInfo? main,
      @JsonKey(name: 'visibility') final int? visibility,
      @JsonKey(name: 'wind') final Wind? wind,
      @JsonKey(name: 'clouds') final Clouds? clouds,
      @JsonKey(name: 'dt') final int? dt,
      @JsonKey(name: 'sys') final Sys? sys,
      @JsonKey(name: 'timezone') final int? timezone,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(ignore: true) final int? cod}) = _$_WeatherDataModel;

  factory _WeatherDataModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherDataModel.fromJson;

  @override
  @JsonKey(name: 'coord')
  Coord? get coord;
  @override
  @JsonKey(name: 'weather')
  List<Weather>? get weather;
  @override
  @JsonKey(name: 'base')
  String? get base;
  @override
  @JsonKey(name: 'main')
  MainInfo? get main;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'wind')
  Wind? get wind;
  @override
  @JsonKey(name: 'clouds')
  Clouds? get clouds;
  @override
  @JsonKey(name: 'dt')
  int? get dt;
  @override
  @JsonKey(name: 'sys')
  Sys? get sys;
  @override
  @JsonKey(name: 'timezone')
  int? get timezone;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  int? get cod;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDataModelCopyWith<_$_WeatherDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
