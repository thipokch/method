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
    on<_UpdateThemeMode>(_onUpdateThemeMode);
    on<_UpdateServices>(_onUpdateServices);
  }

  static BlocProvider provide({
    required Widget child,
  }) =>
      BlocProvider(
        create: (_) => AppBloc(),
        child: child,
      );

  void _onReset(_Reset event, Emitter<AppState> emit) =>
      emit(AppState.initial());

  void _onLoad(_Load event, Emitter<AppState> emit) => state.maybeMap(
        initial: (_) async => emit(AppState.loaded(
          themeMode: ThemeMode.system,
          serviceProviders: await Future.wait(
            event.serviceProviders.map((_) async => await _()),
          ),
        )),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateThemeMode(_UpdateThemeMode event, Emitter<AppState> emit) =>
      state.maybeMap(
        loaded: (_) => emit(AppState.loaded(
          themeMode: event.themeMode,
          serviceProviders: _.serviceProviders,
        )),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateServices(_UpdateServices event, Emitter<AppState> emit) =>
      state.maybeMap(
        loaded: (_) async {
          final current = {
            for (final s in _.serviceProviders) s.runtimeType: s,
          };

          final futures = await Future.wait(
            event.serviceProviders.map((_) async => await _()),
          );

          for (var _ in futures) {
            current[_.runtimeType] = _;
          }

          emit(AppState.loaded(
            themeMode: _.themeMode,
            serviceProviders: current.values.toList(),
          ));

          return;
        },
        orElse: () => throw UnimplementedError(),
      );
}
