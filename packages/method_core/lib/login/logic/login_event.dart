part of 'login_bloc.dart';

/// {@template login_event}
/// Event added when some custom logic happens
/// {@endtemplate}
@freezed
class LoginEvent with _$LoginEvent {
  const LoginEvent._();

  const factory LoginEvent.create() = _Create;
  const factory LoginEvent.start() = _Start;
  const factory LoginEvent.resume() = _Resume;
  const factory LoginEvent.pause() = _Pause;
  const factory LoginEvent.stop() = _Stop;
  const factory LoginEvent.destroy() = _Destroy;
}
