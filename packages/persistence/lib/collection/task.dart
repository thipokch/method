import 'package:core/model/task.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/task_definition.dart';

import '../collection.dart';

part 'task.g.dart';

@collection
class DbTask extends DaoObject {
  @override
  final String collectionSlug;

  final String icon;
  final String name;
  final String description;

  List<DbTaskDefinition> definitions;

  DbTask({
    required this.icon,
    required this.name,
    required this.description,
    this.definitions = const [],
    required this.collectionSlug,
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

class TaskRepository extends Collection<Task, DbTask> {
  const TaskRepository(super.driver);

  @override
  DbTask toDao(Task dom) => TaskMapper.toDao(dom: dom);

  @override
  Task toDom(DbTask dao) => TaskMapper.toDom(dao: dao);

  @override
  WhereRepeatModifier<DbTask, DbTask, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));
}
