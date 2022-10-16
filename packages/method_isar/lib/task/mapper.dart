import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_core/util/uuid.dart';

import '../schema.dart';

class DbTaskMapper {
  const DbTaskMapper._();

  static DbTask toDao({
    required Task dom,
  }) =>
      DbTask(
        icon: dom.icon,
        name: dom.name,
        description: dom.description,
        definitions: dom.definitions
            .map((dom) => DbTaskDefinitionMapper.toDao(dom: dom))
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
        .map((dao) => DbTaskDefinitionMapper.toDom(dao: dao))
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

class DbTaskDefinitionMapper {
  const DbTaskDefinitionMapper._();

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
