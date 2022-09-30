part of 'definition_bloc.dart';

@freezed
class DefinitionState with _$DefinitionState {
  // const factory TaskState.initial() = _Initial;

  const factory DefinitionState.taskLoaded({
    required TaskDefinition task,
  }) = _TaskLoaded;

  const factory DefinitionState.entryLoaded({
    required TaskDefinition task,
    required EntryDefinition entry,
  }) = _DefinitionLoaded;
}
