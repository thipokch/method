part of 'privacy_bloc.dart';

@freezed
class PrivacyEvent with _$PrivacyEvent {
  const PrivacyEvent._();

  const factory PrivacyEvent.create() = _Create;
  const factory PrivacyEvent.start() = _Start;
  const factory PrivacyEvent.resume() = _Resume;
  const factory PrivacyEvent.pause() = _Pause;
  const factory PrivacyEvent.stop() = _Stop;
  const factory PrivacyEvent.destroy() = _Destroy;
}
