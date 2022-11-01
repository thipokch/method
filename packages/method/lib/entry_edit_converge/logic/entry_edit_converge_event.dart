part of 'entry_edit_converge_bloc.dart';

@freezed
class EntryEditConvergeEvent
    with _$EntryEditConvergeEvent
    implements EntryEditEventBase {
  const EntryEditConvergeEvent._();

  @With<EntryEditBase_Start<BuildEntryDefinition>>()
  const factory EntryEditConvergeEvent.start({
    required final BuildEntryDefinition definitions,
  }) = _Start;

  const factory EntryEditConvergeEvent.stop() = _Stop;

  const factory EntryEditConvergeEvent.selectLabel({
    required final int index,
  }) = _SelectLabel;

  const factory EntryEditConvergeEvent.updateNote({
    required final String text,
  }) = _UpdateNote;
}
