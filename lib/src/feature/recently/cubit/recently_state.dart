part of 'recently_cubit.dart';

@freezed
class RecentlyState with _$RecentlyState {
  const factory RecentlyState({@Default([]) List<String> recently}) =
      _RecentlyState;
}
