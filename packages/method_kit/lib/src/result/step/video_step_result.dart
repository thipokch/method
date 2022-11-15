import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/result/question_result.dart';
import 'package:method_kit/src/steps/identifier/identifier.dart';

part 'video_step_result.freezed.dart';
part 'video_step_result.g.dart';

@freezed
class VideoStepResult
    with _$VideoStepResult
    implements QuestionResult<VideoResult> {
  const VideoStepResult._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory VideoStepResult({
    required Identifier id,
    required DateTime startDate,
    required DateTime endDate,
    required VideoResult result,
  }) = _VideoStepResult;

  factory VideoStepResult.fromJson(Map<String, dynamic> json) =>
      _$VideoStepResultFromJson(json);

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
