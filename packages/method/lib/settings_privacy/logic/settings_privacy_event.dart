part of 'settings_privacy_bloc.dart';

@freezed
class SettingsPrivacyEvent {
  const SettingsPrivacyEvent._();

  const factory SettingsPrivacyEvent.create() = _Create;
  const factory SettingsPrivacyEvent.start() = _Start;
  const factory SettingsPrivacyEvent.resume() = _Resume;
  const factory SettingsPrivacyEvent.pause() = _Pause;
  const factory SettingsPrivacyEvent.stop() = _Stop;
  const factory SettingsPrivacyEvent.destroy() = _Destroy;
}
