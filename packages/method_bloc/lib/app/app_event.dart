part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.reset() = _Reset;

  const factory AppEvent.load() = _Load;

  const factory AppEvent.themeModeUpdated({
    required ThemeMode themeMode,
  }) = _ThemeModeUpdated;
}
