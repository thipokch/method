import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'identifier.freezed.dart';
part 'identifier.g.dart';

abstract class _Identifier {
  String get id;
}

@Freezed(fallbackUnion: 'default')
class Identifier with _$Identifier implements _Identifier {
  const factory Identifier({
    required final String id,
  }) = BaseIdentifier;

  static String uuid() => const Uuid().v4();

  const factory Identifier.exercise({
    required final String id,
  }) = ExerciseIdentifier;

  static ExerciseIdentifier newExercise() => ExerciseIdentifier(id: uuid());

  const factory Identifier.task({
    required final String id,
  }) = TaskIdentifier;

  static TaskIdentifier newTask() => TaskIdentifier(id: uuid());

  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);
}
