part of 'settings_appearance_bloc.dart';

@freezed
class SettingsAppearanceState {
  const SettingsAppearanceState._();

  const factory SettingsAppearanceState.initial() = _Initial;
  const factory SettingsAppearanceState.created() = _Created;
  const factory SettingsAppearanceState.started() = _Started;
  const factory SettingsAppearanceState.resumed() = _Resumed;
  const factory SettingsAppearanceState.destroyed() = _Destroyed;
  const factory SettingsAppearanceState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
