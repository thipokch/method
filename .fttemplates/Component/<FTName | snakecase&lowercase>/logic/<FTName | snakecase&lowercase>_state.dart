part of '<FTName | snakecase&lowercase>_bloc.dart';

@freezed
class <FTName | pascalcase>State with _$<FTName | pascalcase>State {
  const <FTName | pascalcase>State._();

  const factory <FTName | pascalcase>State.initial() = _Initial;
  const factory <FTName | pascalcase>State.created() = _Created;
  const factory <FTName | pascalcase>State.started() = _Started;
  const factory <FTName | pascalcase>State.resumed() = _Resumed;
  const factory <FTName | pascalcase>State.destroyed() = _Destroyed;
  const factory <FTName | pascalcase>State.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
