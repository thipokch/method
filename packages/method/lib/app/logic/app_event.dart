part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const AppEvent._();

  const factory AppEvent.start() = _Start;

  const factory AppEvent.setThemeMode({
    required final ThemeMode themeMode,
  }) = _SetThemeMode;
}
