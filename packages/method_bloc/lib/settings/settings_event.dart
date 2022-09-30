part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.load() = _Load;

  const factory SettingsEvent.themeModeUpdated({
    required ThemeMode themeMode,
  }) = _ThemeModeUpdated;

  const factory SettingsEvent.reset() = _Reset;
}
