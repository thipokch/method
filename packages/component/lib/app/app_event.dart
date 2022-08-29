part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.load({
    required Widget flow,
  }) = _Load;

  const factory AppEvent.loadModal({
    required Widget flow,
  }) = _LoadModal;

  const factory AppEvent.loadSlave({
    required Widget flow,
  }) = _LoadSlave;
}
