part of '<FTName | snakecase&lowercase>_bloc.dart';

@freezed
class <FTName | pascalcase>Event with _$<FTName | pascalcase>Event {
  const <FTName | pascalcase>Event._();

  const factory <FTName | pascalcase>Event.create() = _Create;
  const factory <FTName | pascalcase>Event.start() = _Start;
  const factory <FTName | pascalcase>Event.resume() = _Resume;
  const factory <FTName | pascalcase>Event.pause() = _Pause;
  const factory <FTName | pascalcase>Event.stop() = _Stop;
  const factory <FTName | pascalcase>Event.destroy() = _Destroy;
}
