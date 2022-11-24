import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/method_kit.dart';

part 'exercise_identifier.freezed.dart';
part 'exercise_identifier.g.dart';

/// Used to uniquly identify a [Exercise]
@freezed
class ExerciseIdentifier
    with _$ExerciseIdentifier, IdentifierEquality<ExerciseIdentifier>
    implements Identifier {
  const ExerciseIdentifier._();

  const factory ExerciseIdentifier({
    required final String id,
  }) = _ExerciseIdentifier;

  factory ExerciseIdentifier.fromJson(Map<String, dynamic> json) =>
      _$ExerciseIdentifierFromJson(json);
}
