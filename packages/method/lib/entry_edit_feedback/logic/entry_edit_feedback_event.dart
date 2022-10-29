part of 'entry_edit_feedback_bloc.dart';

@freezed
class EntryEditFeedbackEvent
    with _$EntryEditFeedbackEvent
    implements EntryEditEventBase {
  const EntryEditFeedbackEvent._();

  @With<EntryEditBase_StartTask>()
  const factory EntryEditFeedbackEvent.startTask({
    required final String taskId,
  }) = _StartTask;

  @With<EntryEditBase_StartEntry>()
  const factory EntryEditFeedbackEvent.startEntry({
    required final String entryId,
  }) = _StartEntry;

  const factory EntryEditFeedbackEvent.stop() = _Stop;

  const factory EntryEditFeedbackEvent.selectRating({
    required final int index,
  }) = _SelectRating;

  const factory EntryEditFeedbackEvent.updateNote({
    required final String text,
  }) = _UpdateNote;
}
