import 'package:core/abstract/uniform.dart';
import 'package:core/model/task.dart';
import 'package:core/model/task_definition.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/task_definition.dart';

import '../collection.dart';

part 'task.g.dart';

@collection
class DbTask
    extends DaoWithDefinitions<Task, TaskDefinition, DbTaskDefinition> {
  String icon;
  String name;
  String description;

  DbTask({
    required this.icon,
    required this.name,
    required this.description,
    super.definitions = const [],
    required super.collectionSlug,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });
}

class TaskMapper {
  const TaskMapper._();

  static DbTask toDao({
    required Task dom,
  }) =>
      DbTask(
        icon: dom.icon,
        name: dom.name,
        description: dom.description,
        definitions: dom.definitions
            .map((dom) => TaskDefinitionMapper.toDao(dom: dom))
            .toList(),
        collectionSlug: dom.collectionSlug,
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      );

  static Task toDom({
    required DbTask dao,
  }) {
    final domDefinitions = dao.definitions
        .map((dao) => TaskDefinitionMapper.toDom(dao: dao))
        .toList();

    switch (dao.collectionSlug) {
      case "diverge":
        return Task.diverge(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      case "converge":
        return Task.converge(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      case "feedback":
        return Task.feedback(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      default:
        return Task.linear(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );
    }
  }
}

class TaskRepository extends CollectionWithDefinitions<Task, DbTask,
    TaskDefinition, DbTaskDefinition> {
  const TaskRepository(super.driver);

  @override
  final parentToDao = TaskMapper.toDao;

  @override
  final parentToDom = TaskMapper.toDom;

  @override
  WhereRepeatModifier<DbTask, DbTask, Uniform> get uniformEqualTo =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );

  @override
  Collection<TaskDefinition, DbTaskDefinition> get childCollection =>
      TaskDefinitionRepository(source);
}
