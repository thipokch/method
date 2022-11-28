part of 'answer_format.dart';

@freezed
class VideoResult with _$VideoResult {
  const factory VideoResult({
    required final Duration leftVideoAt,
    required final DateTime stayedInVideo,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
