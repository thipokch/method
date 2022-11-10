part of '../schema.dart';

@collection
class DbExercise extends DaoDefinition<Exercise, Task, DbTask> {
  @override
  final String collectionSlug = "exercise";

  String icon;
  String name;
  String description;

  String presentation;

  DbExercise({
    required this.icon,
    required this.name,
    required this.description,
    super.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
    required this.presentation,
  });
}
