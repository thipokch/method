part of 'settings_appearance_bloc.dart';

@freezed
class SettingsAppearanceEvent {
  const SettingsAppearanceEvent._();

  const factory SettingsAppearanceEvent.create() = _Create;
  const factory SettingsAppearanceEvent.start() = _Start;
  const factory SettingsAppearanceEvent.resume() = _Resume;
  const factory SettingsAppearanceEvent.pause() = _Pause;
  const factory SettingsAppearanceEvent.stop() = _Stop;
  const factory SettingsAppearanceEvent.destroy() = _Destroy;
}
