part of 'license_list_bloc.dart';

/// {@template license_list_event}
/// Event added when some custom logic happens
/// {@endtemplate}
@freezed
class LicenseListEvent with _$LicenseListEvent {
  const LicenseListEvent._();

  const factory LicenseListEvent.create() = _Create;
  const factory LicenseListEvent.start() = _Start;
  const factory LicenseListEvent.resume() = _Resume;
  const factory LicenseListEvent.pause() = _Pause;
  const factory LicenseListEvent.stop() = _Stop;
  const factory LicenseListEvent.destroy() = _Destroy;
}
