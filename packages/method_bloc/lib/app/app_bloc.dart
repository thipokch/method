import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';
part 'app_event.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(_Initial()) {
    on<_Reset>(_onReset);
    on<_Load>(_onLoad);
    on<_ThemeModeUpdated>(_onThemeModeUpdated);
  }

  void _onReset(_Reset event, Emitter<AppState> emit) =>
      emit(AppState.initial());

  void _onLoad(_Load event, Emitter<AppState> emit) => state.maybeMap(
        initial: (_) => emit(AppState.loaded(
          themeMode: ThemeMode.system,
        )),
        orElse: () => throw UnimplementedError(),
      );

  void _onThemeModeUpdated(_ThemeModeUpdated event, Emitter<AppState> emit) =>
      state.maybeMap(
        loaded: (_) => emit(AppState.loaded(
          themeMode: event.themeMode,
        )),
        orElse: () => throw UnimplementedError(),
      );
}
