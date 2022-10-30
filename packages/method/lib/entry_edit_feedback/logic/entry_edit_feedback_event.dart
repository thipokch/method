part of 'entry_edit_feedback_bloc.dart';

@freezed
class EntryEditFeedbackEvent
    with _$EntryEditFeedbackEvent
    implements EntryEditEventBase {
  const EntryEditFeedbackEvent._();

  @With<EntryEditBase_Start>()
  const factory EntryEditFeedbackEvent.start({
    required final BuildEntryDefinition definitions,
  }) = _Start;

  const factory EntryEditFeedbackEvent.stop() = _Stop;

  const factory EntryEditFeedbackEvent.selectRating({
    required final int index,
  }) = _SelectRating;

  const factory EntryEditFeedbackEvent.updateNote({
    required final String text,
  }) = _UpdateNote;
}
