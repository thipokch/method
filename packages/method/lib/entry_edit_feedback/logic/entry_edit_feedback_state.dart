part of 'entry_edit_feedback_bloc.dart';

@freezed
class EntryEditFeedbackState
    with _$EntryEditFeedbackState
    implements EntryEditStateBase {
  const EntryEditFeedbackState._();

  @With<EntryEditBase_Initial>()
  const factory EntryEditFeedbackState.initial() = _Initial;

  @With<EntryEditBase_Started>()
  const factory EntryEditFeedbackState.started({
    required final BuildEntryDefinition definitions,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditFeedbackState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  BuildEntryDefinition? get definitions => mapOrNull(
        started: (_) => _.definitions,
      );
}
