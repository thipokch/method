part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState.initial() = _Initial;

  const factory AppState.started({
    required final ThemeMode themeMode,
    required final GoRouter router,
    required List<SingleChildStatelessWidget> serviceProviders,
  }) = _Started;

  const factory AppState.resumed() = _Resumed;
  const factory AppState.destroyed() = _Destroyed;
  const factory AppState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}

extension Getters on AppState {
  GoRouter? get router => mapOrNull(started: (_) => _.router);
  ThemeMode? get themeMode => mapOrNull(started: (_) => _.themeMode);
}

@visibleForTesting
typedef AppStateStarted = _Started;
