part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  AppState._();

  factory AppState.initial() = _Initial;

  factory AppState.loaded({
    required ThemeMode themeMode,
    required List<dynamic> serviceProviders,
  }) = _Loaded;
}
