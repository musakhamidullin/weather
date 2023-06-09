// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) outPutToScreen,
    required TResult Function(String value) findPlace,
    required TResult Function() failure,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? outPutToScreen,
    TResult? Function(String value)? findPlace,
    TResult? Function()? failure,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? outPutToScreen,
    TResult Function(String value)? findPlace,
    TResult Function()? failure,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OutPutToScreen value) outPutToScreen,
    required TResult Function(_FindPlace value) findPlace,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OutPutToScreen value)? outPutToScreen,
    TResult? Function(_FindPlace value)? findPlace,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OutPutToScreen value)? outPutToScreen,
    TResult Function(_FindPlace value)? findPlace,
    TResult Function(_Failure value)? failure,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'WeatherEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) outPutToScreen,
    required TResult Function(String value) findPlace,
    required TResult Function() failure,
    required TResult Function() refresh,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? outPutToScreen,
    TResult? Function(String value)? findPlace,
    TResult? Function()? failure,
    TResult? Function()? refresh,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? outPutToScreen,
    TResult Function(String value)? findPlace,
    TResult Function()? failure,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OutPutToScreen value) outPutToScreen,
    required TResult Function(_FindPlace value) findPlace,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Refresh value) refresh,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OutPutToScreen value)? outPutToScreen,
    TResult? Function(_FindPlace value)? findPlace,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OutPutToScreen value)? outPutToScreen,
    TResult Function(_FindPlace value)? findPlace,
    TResult Function(_Failure value)? failure,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements WeatherEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_OutPutToScreenCopyWith<$Res> {
  factory _$$_OutPutToScreenCopyWith(
          _$_OutPutToScreen value, $Res Function(_$_OutPutToScreen) then) =
      __$$_OutPutToScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_OutPutToScreenCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_OutPutToScreen>
    implements _$$_OutPutToScreenCopyWith<$Res> {
  __$$_OutPutToScreenCopyWithImpl(
      _$_OutPutToScreen _value, $Res Function(_$_OutPutToScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_OutPutToScreen(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OutPutToScreen implements _OutPutToScreen {
  const _$_OutPutToScreen({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'WeatherEvent.outPutToScreen(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OutPutToScreen &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutPutToScreenCopyWith<_$_OutPutToScreen> get copyWith =>
      __$$_OutPutToScreenCopyWithImpl<_$_OutPutToScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) outPutToScreen,
    required TResult Function(String value) findPlace,
    required TResult Function() failure,
    required TResult Function() refresh,
  }) {
    return outPutToScreen(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? outPutToScreen,
    TResult? Function(String value)? findPlace,
    TResult? Function()? failure,
    TResult? Function()? refresh,
  }) {
    return outPutToScreen?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? outPutToScreen,
    TResult Function(String value)? findPlace,
    TResult Function()? failure,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (outPutToScreen != null) {
      return outPutToScreen(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OutPutToScreen value) outPutToScreen,
    required TResult Function(_FindPlace value) findPlace,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Refresh value) refresh,
  }) {
    return outPutToScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OutPutToScreen value)? outPutToScreen,
    TResult? Function(_FindPlace value)? findPlace,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return outPutToScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OutPutToScreen value)? outPutToScreen,
    TResult Function(_FindPlace value)? findPlace,
    TResult Function(_Failure value)? failure,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (outPutToScreen != null) {
      return outPutToScreen(this);
    }
    return orElse();
  }
}

abstract class _OutPutToScreen implements WeatherEvent {
  const factory _OutPutToScreen({required final String name}) =
      _$_OutPutToScreen;

  String get name;
  @JsonKey(ignore: true)
  _$$_OutPutToScreenCopyWith<_$_OutPutToScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FindPlaceCopyWith<$Res> {
  factory _$$_FindPlaceCopyWith(
          _$_FindPlace value, $Res Function(_$_FindPlace) then) =
      __$$_FindPlaceCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_FindPlaceCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_FindPlace>
    implements _$$_FindPlaceCopyWith<$Res> {
  __$$_FindPlaceCopyWithImpl(
      _$_FindPlace _value, $Res Function(_$_FindPlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_FindPlace(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FindPlace implements _FindPlace {
  const _$_FindPlace({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'WeatherEvent.findPlace(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindPlace &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FindPlaceCopyWith<_$_FindPlace> get copyWith =>
      __$$_FindPlaceCopyWithImpl<_$_FindPlace>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) outPutToScreen,
    required TResult Function(String value) findPlace,
    required TResult Function() failure,
    required TResult Function() refresh,
  }) {
    return findPlace(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? outPutToScreen,
    TResult? Function(String value)? findPlace,
    TResult? Function()? failure,
    TResult? Function()? refresh,
  }) {
    return findPlace?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? outPutToScreen,
    TResult Function(String value)? findPlace,
    TResult Function()? failure,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (findPlace != null) {
      return findPlace(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OutPutToScreen value) outPutToScreen,
    required TResult Function(_FindPlace value) findPlace,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Refresh value) refresh,
  }) {
    return findPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OutPutToScreen value)? outPutToScreen,
    TResult? Function(_FindPlace value)? findPlace,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return findPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OutPutToScreen value)? outPutToScreen,
    TResult Function(_FindPlace value)? findPlace,
    TResult Function(_Failure value)? failure,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (findPlace != null) {
      return findPlace(this);
    }
    return orElse();
  }
}

abstract class _FindPlace implements WeatherEvent {
  const factory _FindPlace({required final String value}) = _$_FindPlace;

  String get value;
  @JsonKey(ignore: true)
  _$$_FindPlaceCopyWith<_$_FindPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'WeatherEvent.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) outPutToScreen,
    required TResult Function(String value) findPlace,
    required TResult Function() failure,
    required TResult Function() refresh,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? outPutToScreen,
    TResult? Function(String value)? findPlace,
    TResult? Function()? failure,
    TResult? Function()? refresh,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? outPutToScreen,
    TResult Function(String value)? findPlace,
    TResult Function()? failure,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OutPutToScreen value) outPutToScreen,
    required TResult Function(_FindPlace value) findPlace,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Refresh value) refresh,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OutPutToScreen value)? outPutToScreen,
    TResult? Function(_FindPlace value)? findPlace,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OutPutToScreen value)? outPutToScreen,
    TResult Function(_FindPlace value)? findPlace,
    TResult Function(_Failure value)? failure,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements WeatherEvent {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'WeatherEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) outPutToScreen,
    required TResult Function(String value) findPlace,
    required TResult Function() failure,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? outPutToScreen,
    TResult? Function(String value)? findPlace,
    TResult? Function()? failure,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? outPutToScreen,
    TResult Function(String value)? findPlace,
    TResult Function()? failure,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_OutPutToScreen value) outPutToScreen,
    required TResult Function(_FindPlace value) findPlace,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_OutPutToScreen value)? outPutToScreen,
    TResult? Function(_FindPlace value)? findPlace,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_OutPutToScreen value)? outPutToScreen,
    TResult Function(_FindPlace value)? findPlace,
    TResult Function(_Failure value)? failure,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements WeatherEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
mixin _$WeatherState {
  WeatherStatus get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  WeatherDataModel? get data => throw _privateConstructorUsedError;
  WeatherDataForecast? get forecast => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {WeatherStatus status,
      String? name,
      WeatherDataModel? data,
      WeatherDataForecast? forecast});

  $WeatherDataModelCopyWith<$Res>? get data;
  $WeatherDataForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = freezed,
    Object? data = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel?,
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as WeatherDataForecast?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WeatherDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDataForecastCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $WeatherDataForecastCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherStatus status,
      String? name,
      WeatherDataModel? data,
      WeatherDataForecast? forecast});

  @override
  $WeatherDataModelCopyWith<$Res>? get data;
  @override
  $WeatherDataForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherState>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = freezed,
    Object? data = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_$_WeatherState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel?,
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as WeatherDataForecast?,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {this.status = WeatherStatus.initial,
      this.name,
      this.data,
      this.forecast});

  @override
  @JsonKey()
  final WeatherStatus status;
  @override
  final String? name;
  @override
  final WeatherDataModel? data;
  @override
  final WeatherDataForecast? forecast;

  @override
  String toString() {
    return 'WeatherState(status: $status, name: $name, data: $data, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, data, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final WeatherStatus status,
      final String? name,
      final WeatherDataModel? data,
      final WeatherDataForecast? forecast}) = _$_WeatherState;

  @override
  WeatherStatus get status;
  @override
  String? get name;
  @override
  WeatherDataModel? get data;
  @override
  WeatherDataForecast? get forecast;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
