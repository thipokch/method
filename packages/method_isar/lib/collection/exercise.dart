import 'dart:convert';

import 'package:method_core/abstract/present.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:method_isar/collection/task.dart';

import '../collection.dart';

part 'exercise.g.dart';

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

class ExerciseMapper {
  const ExerciseMapper._();

  static DbExercise toDao({
    required Exercise dom,
  }) =>
      DbExercise(
        icon: dom.icon,
        name: dom.name,
        description: dom.description,
        definitions:
            dom.definitions.map((dom) => TaskMapper.toDao(dom: dom)).toList(),
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        presentation: jsonEncode(dom.presentation.toJson()),
      );

  static Exercise toDom({
    required DbExercise dao,
  }) =>
      Exercise(
        icon: dao.icon,
        name: dao.name,
        description: dao.description,
        definitions:
            dao.definitions.map((dao) => TaskMapper.toDom(dao: dao!)).toList(),
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
        presentation: Presentation.fromJson(jsonDecode(dao.presentation)),
      );
}

class ExerciseRepository
    extends DaoDocumentCollection<Exercise, DbExercise, Task, DbTask> {
  const ExerciseRepository(super.driver);

  @override
  final parentToDao = ExerciseMapper.toDao;

  @override
  final parentToDom = ExerciseMapper.toDom;

  @override
  Collection<Task, DbTask> get childCollection => TaskRepository(source);

  @override
  WhereRepeatModifier<DbExercise, DbExercise, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));
}
