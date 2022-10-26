part of 'entry_edit_bloc.dart';

@freezed
class EntryEditEvent with _$EntryEditEvent {
  const EntryEditEvent._();

  const factory EntryEditEvent.create() = _Create;
  const factory EntryEditEvent.start() = _Start;
  const factory EntryEditEvent.resume() = _Resume;
  const factory EntryEditEvent.pause() = _Pause;
  const factory EntryEditEvent.stop() = _Stop;
  const factory EntryEditEvent.destroy() = _Destroy;
}
