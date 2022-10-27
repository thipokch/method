part of 'definition_edit_label_bloc.dart';

@freezed
class DefinitionEditLabelState with _$DefinitionEditLabelState {
  const DefinitionEditLabelState._();

  const factory DefinitionEditLabelState.initial() = _Initial;
  const factory DefinitionEditLabelState.created() = _Created;
  const factory DefinitionEditLabelState.started() = _Started;
  const factory DefinitionEditLabelState.resumed() = _Resumed;
  const factory DefinitionEditLabelState.destroyed() = _Destroyed;
  const factory DefinitionEditLabelState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
