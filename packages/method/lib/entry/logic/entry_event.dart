part of 'entry_bloc.dart';

@freezed
class EntryEvent with _$EntryEvent {
  const EntryEvent._();

  const factory EntryEvent.create() = _Create;
  const factory EntryEvent.start() = _Start;
  const factory EntryEvent.resume() = _Resume;
  const factory EntryEvent.pause() = _Pause;
  const factory EntryEvent.stop() = _Stop;
  const factory EntryEvent.destroy() = _Destroy;
}
