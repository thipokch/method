part of 'entry_edit_bloc.dart';

@freezed
class EntryEditState with _$EntryEditState implements EntryEditStateBase {
  const EntryEditState._();

  @With<EntryEditBase_Initial>()
  const factory EntryEditState.intial() = _Initial;

  @With<EntryEditBase_Started>()
  const factory EntryEditState.started({
    required final Entry entry,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditState.errored({
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
