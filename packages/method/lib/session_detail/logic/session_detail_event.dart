part of 'session_detail_bloc.dart';

@freezed
class SessionDetailEvent with _$SessionDetailEvent {
  const SessionDetailEvent._();

  const factory SessionDetailEvent.create() = _Create;
  const factory SessionDetailEvent.start() = _Start;
  const factory SessionDetailEvent.resume() = _Resume;
  const factory SessionDetailEvent.pause() = _Pause;
  const factory SessionDetailEvent.stop() = _Stop;
  const factory SessionDetailEvent.destroy() = _Destroy;
}
