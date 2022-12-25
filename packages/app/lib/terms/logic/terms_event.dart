part of 'terms_bloc.dart';

@freezed
class TermsEvent with _$TermsEvent {
  const TermsEvent._();

  const factory TermsEvent.create() = _Create;
  const factory TermsEvent.start() = _Start;
  const factory TermsEvent.resume() = _Resume;
  const factory TermsEvent.pause() = _Pause;
  const factory TermsEvent.stop() = _Stop;
  const factory TermsEvent.destroy() = _Destroy;
}
