part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.reset() = _Reset;

  const factory AppEvent.load({
    required List<Future<dynamic> Function()> serviceProviders,
  }) = _Load;

  const factory AppEvent.updateThemeMode({
    required ThemeMode themeMode,
  }) = _UpdateThemeMode;

  const factory AppEvent.updateServices({
    required List<Future<dynamic> Function()> serviceProviders,
  }) = _UpdateServices;
}
