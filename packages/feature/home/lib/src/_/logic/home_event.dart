part of 'home_bloc.dart';

/// {@template home_event}
/// Event added when some custom logic happens
/// {@endtemplate}
@freezed
class HomeEvent with _$HomeEvent {
  const HomeEvent._();

  const factory HomeEvent.create() = _Create;
  const factory HomeEvent.start() = _Start;
  const factory HomeEvent.resume() = _Resume;
  const factory HomeEvent.pause() = _Pause;
  const factory HomeEvent.stop() = _Stop;
  const factory HomeEvent.destroy() = _Destroy;
}
