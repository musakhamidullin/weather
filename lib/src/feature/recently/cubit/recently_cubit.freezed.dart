// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentlyState {
  List<String> get recently => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentlyStateCopyWith<RecentlyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyStateCopyWith<$Res> {
  factory $RecentlyStateCopyWith(
          RecentlyState value, $Res Function(RecentlyState) then) =
      _$RecentlyStateCopyWithImpl<$Res, RecentlyState>;
  @useResult
  $Res call({List<String> recently});
}

/// @nodoc
class _$RecentlyStateCopyWithImpl<$Res, $Val extends RecentlyState>
    implements $RecentlyStateCopyWith<$Res> {
  _$RecentlyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recently = null,
  }) {
    return _then(_value.copyWith(
      recently: null == recently
          ? _value.recently
          : recently // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentlyStateCopyWith<$Res>
    implements $RecentlyStateCopyWith<$Res> {
  factory _$$_RecentlyStateCopyWith(
          _$_RecentlyState value, $Res Function(_$_RecentlyState) then) =
      __$$_RecentlyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> recently});
}

/// @nodoc
class __$$_RecentlyStateCopyWithImpl<$Res>
    extends _$RecentlyStateCopyWithImpl<$Res, _$_RecentlyState>
    implements _$$_RecentlyStateCopyWith<$Res> {
  __$$_RecentlyStateCopyWithImpl(
      _$_RecentlyState _value, $Res Function(_$_RecentlyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recently = null,
  }) {
    return _then(_$_RecentlyState(
      recently: null == recently
          ? _value._recently
          : recently // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_RecentlyState implements _RecentlyState {
  const _$_RecentlyState({final List<String> recently = const []})
      : _recently = recently;

  final List<String> _recently;
  @override
  @JsonKey()
  List<String> get recently {
    if (_recently is EqualUnmodifiableListView) return _recently;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recently);
  }

  @override
  String toString() {
    return 'RecentlyState(recently: $recently)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentlyState &&
            const DeepCollectionEquality().equals(other._recently, _recently));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recently));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentlyStateCopyWith<_$_RecentlyState> get copyWith =>
      __$$_RecentlyStateCopyWithImpl<_$_RecentlyState>(this, _$identity);
}

abstract class _RecentlyState implements RecentlyState {
  const factory _RecentlyState({final List<String> recently}) =
      _$_RecentlyState;

  @override
  List<String> get recently;
  @override
  @JsonKey(ignore: true)
  _$$_RecentlyStateCopyWith<_$_RecentlyState> get copyWith =>
      throw _privateConstructorUsedError;
}
