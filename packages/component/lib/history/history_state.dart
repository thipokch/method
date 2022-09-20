part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;

  const factory HistoryState.loaded({
    required List<Session> sessions,
  }) = _Loaded;
}
