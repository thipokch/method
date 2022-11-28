import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';

class ExerciseIdentifierConverter
    extends JsonConverter<ExerciseIdentifier, String> {
  const ExerciseIdentifierConverter();

  @override
  ExerciseIdentifier fromJson(String json) => ExerciseIdentifier(id: json);

  @override
  String toJson(ExerciseIdentifier object) => object.id;
}

class TaskIdentifierConverter
    extends JsonConverter<ExerciseIdentifier, String> {
  const TaskIdentifierConverter();

  @override
  ExerciseIdentifier fromJson(String json) => ExerciseIdentifier(id: json);

  @override
  String toJson(ExerciseIdentifier object) => object.id;
}
