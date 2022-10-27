part of 'definition_edit_label_bloc.dart';

@freezed
class DefinitionEditLabelEvent with _$DefinitionEditLabelEvent {
  const DefinitionEditLabelEvent._();

  const factory DefinitionEditLabelEvent.create() = _Create;
  const factory DefinitionEditLabelEvent.start() = _Start;
  const factory DefinitionEditLabelEvent.resume() = _Resume;
  const factory DefinitionEditLabelEvent.pause() = _Pause;
  const factory DefinitionEditLabelEvent.stop() = _Stop;
  const factory DefinitionEditLabelEvent.destroy() = _Destroy;
}
