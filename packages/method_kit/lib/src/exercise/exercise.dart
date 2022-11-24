import 'package:json_annotation/json_annotation.dart';
import 'package:method_kit/method_kit.dart';

/// Abstract definition of exercise
///
/// If you want to create a custom exercise:
///  * Inherit from Exercise
///  * If you want to use JSON override [fromJson] and add your type
abstract class Exercise {
  late final ExerciseIdentifier id;
  @JsonKey(defaultValue: [])
  final List<Task> tasks;
  final Task? initalTask;

  Exercise({
    ExerciseIdentifier? id,
    this.tasks = const [],
    this.initalTask,
  }) {
    this.id = id ?? ExerciseIdentifier(id: Identifier.uuid());
  }

  /// Creates a exercise from a Map. The exercise needs to have a type definition of
  /// either 'ordered' - [OrderedExercise] or 'navigable' - [NavigableExercise].
  /// If not it will throw a [ExerciseNotDefinedException].
  factory Exercise.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    if (type == 'ordered') {
      return OrderedExercise.fromJson(json);
    } else if (type == 'navigable') {
      return NavigableExercise.fromJson(json);
    }
    throw const ExerciseNotDefinedException();
  }

  Map<String, dynamic> toJson();

  @override
  bool operator ==(other) => other is Exercise && other.id == id;

  @override
  int get hashCode => id.hashCode ^ tasks.hashCode;
}
