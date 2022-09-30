import 'package:method_core/model/task_definition.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;

import '../collection.dart';

part 'task_definition.g.dart';

@embedded
class DbTaskDefinition extends DaoEmbeded {
  @override
  final String collectionSlug;

  final String icon;
  final String name;
  final String description;

  const DbTaskDefinition({
    this.icon = "",
    this.name = "",
    this.description = "",
    this.collectionSlug = "",
    super.hierarchyPath = "",
    super.id = "",
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
        );

      case "note":
        return TaskDefinition.note(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );

      default:
        return TaskDefinition.note(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );
    }
  }
}
