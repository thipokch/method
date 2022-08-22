import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_state.dart';
part 'settings_event.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(_Loaded(themeMode: ThemeMode.system)) {
    on<_Load>(_onLoad);
    on<_ThemeModeUpdated>(_onThemeModeUpdated);
  }

  void _onLoad(_Load event, Emitter<SettingsState> emit) =>
      emit(SettingsState.loaded(themeMode: ThemeMode.system));

  void _onThemeModeUpdated(
    _ThemeModeUpdated event,
    Emitter<SettingsState> emit,
  ) =>
      emit(SettingsState.loaded(themeMode: event.themeMode));
}
