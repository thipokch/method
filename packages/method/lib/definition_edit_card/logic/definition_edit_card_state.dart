part of 'definition_edit_card_bloc.dart';

@freezed
class DefinitionEditCardState with _$DefinitionEditCardState {
  const DefinitionEditCardState._();

  const factory DefinitionEditCardState.initial() = _Initial;
  const factory DefinitionEditCardState.created() = _Created;
  const factory DefinitionEditCardState.started() = _Started;
  const factory DefinitionEditCardState.resumed() = _Resumed;
  const factory DefinitionEditCardState.destroyed() = _Destroyed;
  const factory DefinitionEditCardState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
