part of 'definition_edit_card_bloc.dart';

@freezed
class DefinitionEditCardEvent with _$DefinitionEditCardEvent {
  const DefinitionEditCardEvent._();

  const factory DefinitionEditCardEvent.create() = _Create;
  const factory DefinitionEditCardEvent.start() = _Start;
  const factory DefinitionEditCardEvent.resume() = _Resume;
  const factory DefinitionEditCardEvent.pause() = _Pause;
  const factory DefinitionEditCardEvent.stop() = _Stop;
  const factory DefinitionEditCardEvent.destroy() = _Destroy;
}
