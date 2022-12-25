part of 'license_detail_bloc.dart';

/// {@template license_detail_event}
/// Event added when some custom logic happens
/// {@endtemplate}
@freezed
class LicenseDetailEvent with _$LicenseDetailEvent {
  const LicenseDetailEvent._();

  const factory LicenseDetailEvent.create() = _Create;
  const factory LicenseDetailEvent.start() = _Start;
  const factory LicenseDetailEvent.resume() = _Resume;
  const factory LicenseDetailEvent.pause() = _Pause;
  const factory LicenseDetailEvent.stop() = _Stop;
  const factory LicenseDetailEvent.destroy() = _Destroy;
}
