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
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  }) : super(collectionSlug: "task");
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
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      );

  static Task toDom({
    required DbTask dao,
    List<TaskDefinition> definitions = const [],
  }) =>
      Task.linear(
        icon: dao.icon,
        name: dao.name,
        description: dao.description,
        definitions: definitions,
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
      );
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
