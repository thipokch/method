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
    required final Entry entry,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditFeedbackState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  Entry? get entry => mapOrNull(
        started: (_) => _.entry,
      );

  @override
  Task? get task => mapOrNull(
        started: (_) => _.entry.template,
      );
}
