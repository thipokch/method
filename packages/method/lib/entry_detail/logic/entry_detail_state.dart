part of 'entry_detail_bloc.dart';

@freezed
class EntryDetailState with _$EntryDetailState {
  const EntryDetailState._();

  const factory EntryDetailState.initial() = _Initial;
  const factory EntryDetailState.started({
    required final Entry entry,
  }) = _Started;
  const factory EntryDetailState.destroyed() = _Destroyed;
  const factory EntryDetailState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}

extension Definition on EntryDetailState {
  BuiltDefinition<TaskDefinition, EntryDefinition>? get definitions =>
      whenOrNull(
        started: (entry) => entry.builtDefinition,
      );

  Task? get task => whenOrNull(
        started: (entry) => entry.template,
      );
  Entry? get entry => whenOrNull(
        started: (entry) => entry,
      );
}
