// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForecastEvent {
  String get namePlace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String namePlace) getForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String namePlace)? getForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String namePlace)? getForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetForecast value) getForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetForecast value)? getForecast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetForecast value)? getForecast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastEventCopyWith<ForecastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEventCopyWith<$Res> {
  factory $ForecastEventCopyWith(
          ForecastEvent value, $Res Function(ForecastEvent) then) =
      _$ForecastEventCopyWithImpl<$Res, ForecastEvent>;
  @useResult
  $Res call({String namePlace});
}

/// @nodoc
class _$ForecastEventCopyWithImpl<$Res, $Val extends ForecastEvent>
    implements $ForecastEventCopyWith<$Res> {
  _$ForecastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namePlace = null,
  }) {
    return _then(_value.copyWith(
      namePlace: null == namePlace
          ? _value.namePlace
          : namePlace // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetForecastCopyWith<$Res>
    implements $ForecastEventCopyWith<$Res> {
  factory _$$_GetForecastCopyWith(
          _$_GetForecast value, $Res Function(_$_GetForecast) then) =
      __$$_GetForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String namePlace});
}

/// @nodoc
class __$$_GetForecastCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res, _$_GetForecast>
    implements _$$_GetForecastCopyWith<$Res> {
  __$$_GetForecastCopyWithImpl(
      _$_GetForecast _value, $Res Function(_$_GetForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namePlace = null,
  }) {
    return _then(_$_GetForecast(
      namePlace: null == namePlace
          ? _value.namePlace
          : namePlace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetForecast implements _GetForecast {
  const _$_GetForecast({required this.namePlace});

  @override
  final String namePlace;

  @override
  String toString() {
    return 'ForecastEvent.getForecast(namePlace: $namePlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetForecast &&
            (identical(other.namePlace, namePlace) ||
                other.namePlace == namePlace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, namePlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetForecastCopyWith<_$_GetForecast> get copyWith =>
      __$$_GetForecastCopyWithImpl<_$_GetForecast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String namePlace) getForecast,
  }) {
    return getForecast(namePlace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String namePlace)? getForecast,
  }) {
    return getForecast?.call(namePlace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String namePlace)? getForecast,
    required TResult orElse(),
  }) {
    if (getForecast != null) {
      return getForecast(namePlace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetForecast value) getForecast,
  }) {
    return getForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetForecast value)? getForecast,
  }) {
    return getForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetForecast value)? getForecast,
    required TResult orElse(),
  }) {
    if (getForecast != null) {
      return getForecast(this);
    }
    return orElse();
  }
}

abstract class _GetForecast implements ForecastEvent {
  const factory _GetForecast({required final String namePlace}) =
      _$_GetForecast;

  @override
  String get namePlace;
  @override
  @JsonKey(ignore: true)
  _$$_GetForecastCopyWith<_$_GetForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForecastState {
  List<Forecast> get data => throw _privateConstructorUsedError;
  WeatherStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastStateCopyWith<ForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastStateCopyWith<$Res> {
  factory $ForecastStateCopyWith(
          ForecastState value, $Res Function(ForecastState) then) =
      _$ForecastStateCopyWithImpl<$Res, ForecastState>;
  @useResult
  $Res call({List<Forecast> data, WeatherStatus? status});
}

/// @nodoc
class _$ForecastStateCopyWithImpl<$Res, $Val extends ForecastState>
    implements $ForecastStateCopyWith<$Res> {
  _$ForecastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastStateCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$$_ForecastStateCopyWith(
          _$_ForecastState value, $Res Function(_$_ForecastState) then) =
      __$$_ForecastStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Forecast> data, WeatherStatus? status});
}

/// @nodoc
class __$$_ForecastStateCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res, _$_ForecastState>
    implements _$$_ForecastStateCopyWith<$Res> {
  __$$_ForecastStateCopyWithImpl(
      _$_ForecastState _value, $Res Function(_$_ForecastState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = freezed,
  }) {
    return _then(_$_ForecastState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus?,
    ));
  }
}

/// @nodoc

class _$_ForecastState implements _ForecastState {
  const _$_ForecastState({final List<Forecast> data = const [], this.status})
      : _data = data;

  final List<Forecast> _data;
  @override
  @JsonKey()
  List<Forecast> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final WeatherStatus? status;

  @override
  String toString() {
    return 'ForecastState(data: $data, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastState &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastStateCopyWith<_$_ForecastState> get copyWith =>
      __$$_ForecastStateCopyWithImpl<_$_ForecastState>(this, _$identity);
}

abstract class _ForecastState implements ForecastState {
  const factory _ForecastState(
      {final List<Forecast> data,
      final WeatherStatus? status}) = _$_ForecastState;

  @override
  List<Forecast> get data;
  @override
  WeatherStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastStateCopyWith<_$_ForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}
