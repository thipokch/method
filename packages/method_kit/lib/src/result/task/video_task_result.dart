import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/identifier/identifier.dart';

part 'video_task_result.freezed.dart';
part 'video_task_result.g.dart';

@freezed
class VideoTaskResult
    with _$VideoTaskResult
    implements QuestionResult<VideoResult> {
  const VideoTaskResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory VideoTaskResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required VideoResult result,
  }) = _VideoTaskResult;

  factory VideoTaskResult.fromJson(Map<String, dynamic> json) =>
      _$VideoTaskResultFromJson(json);

  List<Object?> get props => [id, startDate, endDate, valueIdentifier];

  @override
  String? get valueIdentifier => id.id;
}

@freezed
class VideoResult with _$VideoResult {
  const VideoResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory VideoResult({
    required final Duration leftVideoAt,
    required final DateTime stayedInVideo,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}
