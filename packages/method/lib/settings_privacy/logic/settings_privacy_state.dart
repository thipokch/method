part of 'settings_privacy_bloc.dart';

@freezed
class SettingsPrivacyState {
  const SettingsPrivacyState._();

  const factory SettingsPrivacyState.initial() = _Initial;
  const factory SettingsPrivacyState.created() = _Created;
  const factory SettingsPrivacyState.started() = _Started;
  const factory SettingsPrivacyState.resumed() = _Resumed;
  const factory SettingsPrivacyState.destroyed() = _Destroyed;
  const factory SettingsPrivacyState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
