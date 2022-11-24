import 'package:json_annotation/json_annotation.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/exercise/exercise.dart';
import 'package:method_kit/src/exercise/identifier/exercise_identifier.dart';

part 'ordered_exercise.g.dart';

/// Defines a [Exercise] which handles its tasks in the order of the [tasks] list.
@JsonSerializable(createFactory: false)
class OrderedExercise extends Exercise {
  OrderedExercise({
    required ExerciseIdentifier id,
    required List<Task> tasks,
    Task? initialTask,
  }) : super(
          id: id,
          tasks: tasks,
          initalTask: initialTask,
        );

  factory OrderedExercise.fromJson(Map<String, dynamic> json) =>
      OrderedExercise(
        id: ExerciseIdentifier.fromJson(json),
        tasks: json['tasks'] != null
            ? (json['tasks'] as List<Map<String, dynamic>>)
                .map((task) => Task.fromJson(task))
                .toList()
            : [],
      );

  @override
  Map<String, dynamic> toJson() => _$OrderedExerciseToJson(this);
}
