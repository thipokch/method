part of 'definition_bloc.dart';

@freezed
class DefinitionEvent with _$DefinitionEvent {
  const factory DefinitionEvent.loadTask({
    required TaskDefinition task,
  }) = _LoadTask;

  const factory DefinitionEvent.closeTask() = _CloseTask;

  const factory DefinitionEvent.loadDefinition({
    required EntryDefinition entry,
  }) = _LoadDefinition;

  const factory DefinitionEvent.addData({
    required String text,
  }) = _AddData;

  const factory DefinitionEvent.updateData() = _UpdateData;

  const factory DefinitionEvent.deleteData() = _DeleteData;
}
