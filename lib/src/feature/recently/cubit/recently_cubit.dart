import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/recently.dart';

part 'recently_state.dart';
part 'recently_cubit.freezed.dart';

class RecentlyCubit extends Cubit<RecentlyState> {
  RecentlyCubit(this.recently) : super(RecentlyState());

  final Recently recently;

  void init() => emit(state.copyWith(recently: recently.getRecently.toList()));

  void delete(String value)  => emit(state.copyWith(recently: recently.deleteRecently(value)));

  void add(String value) => emit(state.copyWith(recently: recently.setRecently(value)));
}
