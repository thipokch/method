part of 'entry_edit_diverge_bloc.dart';

@freezed
class EntryEditDivergeState
    with _$EntryEditDivergeState
    implements EntryEditStateBase {
  const EntryEditDivergeState._();

  @With<EntryEditBase_Initial>()
  const factory EntryEditDivergeState.initial() = _Initial;

  @With<EntryEditBase_Started>()
  const factory EntryEditDivergeState.started({
    required final Entry entry,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditDivergeState.errored({
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
