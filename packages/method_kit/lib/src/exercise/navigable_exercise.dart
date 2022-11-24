import 'package:method_kit/src/navigator/rules/navigation_rule.dart';
import 'package:method_kit/src/task/task.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';
import 'package:method_kit/src/exercise/exercise.dart';
import 'package:method_kit/src/exercise/identifier/exercise_identifier.dart';

/// Definition of exercise which can handle routing between [Exercises]
///
/// The [navigationRules] defines on which Task [TaskIdentifier] which next Task
/// is called. The logic which [Task] is called is defined in the
/// [NavigationRule]
class NavigableExercise extends Exercise {
  final Map<TaskIdentifier, NavigationRule> navigationRules;

  NavigableExercise({
    ExerciseIdentifier? id,
    List<Task> tasks = const [],
    Task? initialTask,
    Map<TaskIdentifier, NavigationRule>? navigationRules,
  })  : navigationRules = navigationRules ?? {},
        super(
          id: id,
          tasks: tasks,
          initalTask: initialTask,
        );

  /// Adds a [NavigationRule] to the [navigationRule] Map
  /// It only adds the [NavigationRule] if none is already set for the
  /// [TaskIdentifier]
  void addNavigationRule({
    required TaskIdentifier forTriggerTaskIdentifier,
    required NavigationRule navigationRule,
  }) {
    navigationRules.putIfAbsent(forTriggerTaskIdentifier, () => navigationRule);
  }

  /// Gets the [NavigationRule] which is defined for the given [TaskIndentifier]
  /// return S null if none is defined
  NavigationRule? getRuleByTaskIdentifier(TaskIdentifier? taskIdentifier) {
    return navigationRules[taskIdentifier];
  }

  factory NavigableExercise.fromJson(Map<String, dynamic> json) {
    final Map<TaskIdentifier, NavigationRule> navigationRules = {};

    if (json['rules'] != null) {
      final rules = json['rules'] as List;
      for (var rule in rules) {
        navigationRules.putIfAbsent(
          TaskIdentifier.fromJson(rule['triggerTaskIdentifier']),
          () => NavigationRule.fromJson(rule as Map<String, dynamic>),
        );
      }
    }

    return NavigableExercise(
      id: ExerciseIdentifier.fromJson(json),
      tasks: json['tasks'] != null
          ? (json['tasks'] as List)
              .map((task) => Task.fromJson(task as Map<String, dynamic>))
              .toList()
          : [],
      navigationRules: navigationRules,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'tasks': tasks.map((task) => task.toJson()).toList(),
        'navigationRules': navigationRules,
      };
}
