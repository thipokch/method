import 'package:core/abstract/uniform.dart';
import 'package:core/model/task_definition.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;

import '../collection.dart';

part 'task_definition.g.dart';

@collection
class DbTaskDefinition extends Dao<TaskDefinition> {
  String icon;
  String name;
  String description;

  DbTaskDefinition({
    required this.icon,
    required this.name,
    required this.description,
    required super.collectionSlug,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });
}

class TaskDefinitionMapper {
  const TaskDefinitionMapper._();

  static DbTaskDefinition toDao({
    required TaskDefinition dom,
  }) =>
      DbTaskDefinition(
        icon: dom.icon,
        name: dom.name,
        description: dom.description,
        collectionSlug: dom.collectionSlug,
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      );

  static TaskDefinition toDom({
    required DbTaskDefinition dao,
  }) {
    switch (dao.collectionSlug) {
      case "label":
        return TaskDefinition.label(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      case "note":
        return TaskDefinition.note(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      default:
        return TaskDefinition.note(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );
    }
  }
}

class TaskDefinitionRepository
    extends Collection<TaskDefinition, DbTaskDefinition> {
  TaskDefinitionRepository(super.driver);

  @override
  DbTaskDefinition toDao(TaskDefinition dom) =>
      TaskDefinitionMapper.toDao(dom: dom);

  @override
  TaskDefinition toDom(DbTaskDefinition dao) =>
      TaskDefinitionMapper.toDom(dao: dao);

  @override
  WhereRepeatModifier<DbTaskDefinition, DbTaskDefinition, Uniform>
      get uniformEqualTo => (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );
}
