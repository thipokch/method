part of 'entry_detail_bloc.dart';

@freezed
class EntryDetailEvent with _$EntryDetailEvent {
  const EntryDetailEvent._();

  const factory EntryDetailEvent.start() = _Start;
  const factory EntryDetailEvent.destroy() = _Destroy;

  const factory EntryDetailEvent.editSession() = _EditEntry;
}
