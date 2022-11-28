import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/converter/identifier.dart';
import 'package:method_core/src/converter/map_of_navigation_rules.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

abstract class _Exercise {
  ExerciseIdentifier get id;
  List<Task> get tasks;
  Task? get initialTask;

  const _Exercise();
}

@freezed
class Exercise extends _Exercise with _$Exercise {
  const Exercise._();

  /// Definition of exercise which can handle routing between [Exercises]
  ///
  /// The [navigationRules] defines on which Task [TaskIdentifier] which next Task
  /// is called. The logic which [Task] is called is defined in the
  /// [NavigationRule]
  const factory Exercise.navigable({
    @ExerciseIdentifierConverter() required final ExerciseIdentifier id,
    @Default([]) final List<Task> tasks,
    final Task? initialTask,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'rules')
    @MapOfNavigationRulesConverter()
    @Default({})
        final Map<TaskIdentifier, NavigationRule> navigationRules,
  }) = NavigableExercise;

  const factory Exercise.ordered({
    @ExerciseIdentifierConverter() required final ExerciseIdentifier id,
    @Default([]) final List<Task> tasks,
    final Task? initialTask,
  }) = OrderedExercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}

extension Rules on NavigableExercise {
  // /// Adds a [NavigationRule] to the [navigationRule] Map
  // /// It only adds the [NavigationRule] if none is already set for the
  // /// [TaskIdentifier
  // void addNavigationRule({
  //   required TaskIdentifier forTriggerTaskIdentifier,
  //   required NavigationRule navigationRule,
  // }) {
  //   navigationRules
  //       .build()
  //       .toBuilder()
  //       .putIfAbsent(forTriggerTaskIdentifier, () => navigationRule);
  // }

  /// Gets the [NavigationRule] which is defined for the given [TaskIndentifier]
  /// return S null if none is defined
  NavigationRule? getRuleByTaskIdentifier(TaskIdentifier? taskIdentifier) {
    return navigationRules[taskIdentifier];
  }
}
