import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_appearance_event.dart';
part 'settings_appearance_state.dart';
part 'settings_appearance_bloc.freezed.dart';

typedef SettingsAppearanceBuilder
    = BlocBuilder<SettingsAppearanceBloc, SettingsAppearanceState>;
typedef SettingsAppearanceListener
    = BlocListener<SettingsAppearanceBloc, SettingsAppearanceState>;
typedef SettingsAppearanceSelector<T>
    = BlocSelector<SettingsAppearanceBloc, SettingsAppearanceState, T>;
typedef SettingsAppearanceConsumer
    = BlocConsumer<SettingsAppearanceBloc, SettingsAppearanceState>;

/*
 *
 *     [INITIAL] ──┐
 *                 ↓
 *         ┌── [CREATED] ──┐
 *         ↓       ↑       ↓
 *    [DESTROYED]  └── [STARTED] ──┐
 *                         ↑       ↓
 *                         └── [RESUMED]
 * 
 */

class SettingsAppearanceBloc
    extends Bloc<SettingsAppearanceEvent, SettingsAppearanceState> {
  SettingsAppearanceBloc() : super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<SettingsAppearanceState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<SettingsAppearanceState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<SettingsAppearanceState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<SettingsAppearanceState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<SettingsAppearanceState> emit) =>
      emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<SettingsAppearanceState> emit) =>
      emit(const _Destroyed());

  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - error : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() {
    add(const _Destroy());

    return super.close();
  }
}
