part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.load() = _Load;

  const factory HistoryEvent.update({
    required List<Session> sessions,
  }) = _Update;
}
