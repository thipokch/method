part of 'entry_edit_linear_bloc.dart';

@freezed
class EntryEditLinearEvent
    with _$EntryEditLinearEvent
    implements EntryEditEventBase {
  const EntryEditLinearEvent._();

  @With<EntryEditBase_Start<BuildMultiEntryDefinition>>()
  const factory EntryEditLinearEvent.start({
    required final BuildMultiEntryDefinition definitions,
  }) = _Start;

  const factory EntryEditLinearEvent.stop() = _Stop;

  const factory EntryEditLinearEvent.addNote({
    required final String text,
  }) = _AddNote;

  const factory EntryEditLinearEvent.updateNote({
    required final int index,
    required final String text,
  }) = _UpdateNote;
}
