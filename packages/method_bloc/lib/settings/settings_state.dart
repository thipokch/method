part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  SettingsState._();

  factory SettingsState.initial() = _Initial;

  factory SettingsState.loaded({
    required ThemeMode themeMode,
  }) = _Loaded;
}
