import 'dart:convert';

import 'package:core/abstract/present.dart';
import 'package:core/abstract/uniform.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/task.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/task.dart';

import '../collection.dart';

part 'exercise.g.dart';

@collection
class DbExercise extends DaoWithDefinitions<Exercise, Task, DbTask> {
  String icon;
  String name;
  String description;

  String presentation;

  DbExercise({
    required this.icon,
    required this.name,
    required this.description,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
    required this.presentation,
  }) : super(collectionSlug: "exercise");
}

class ExerciseMapper {
  const ExerciseMapper._();

  static DbExercise toDao({
    required Exercise dom,
  }) =>
      DbExercise(
        icon: dom.icon,
        name: dom.name,
        description: dom.description,
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        presentation: jsonEncode(dom.presentation.toJson()),
      );

  static Exercise toDom({
    required DbExercise dao,
    List<Task> definitions = const [],
  }) =>
      Exercise(
        icon: dao.icon,
        name: dao.name,
        description: dao.description,
        definitions: definitions,
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
        presentation: Presentation.fromJson(jsonDecode(dao.presentation)),
      );
}

class ExerciseRepository
    extends CollectionWithDefinitions<Exercise, DbExercise, Task, DbTask> {
  const ExerciseRepository(super.driver);

  @override
  final parentToDao = ExerciseMapper.toDao;

  @override
  final parentToDom = ExerciseMapper.toDom;

  @override
  WhereRepeatModifier<DbExercise, DbExercise, Uniform> get uniformEqualTo =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );

  @override
  Collection<Task, DbTask> get childCollection => TaskRepository(source);
}
