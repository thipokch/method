part of 'collection.dart';

class TaskCollection extends RealmCollection<Task, DbTask> {
  const TaskCollection(super.source);

  @override
  DbTask toDao(Task dom) => _TaskMapper.toDao(dom: dom);

  @override
  Task toDom(DbTask dao) => _TaskMapper.toDom(dao: dao);
}

class _TaskMapper {
  const _TaskMapper._();

  static DbTask toDao({
    required Task dom,
  }) =>
      DbTask(
        dom.icon,
        dom.name,
        dom.description,
        dom.collectionSlug,
        dom.hierarchyPath,
        dom.id,
        dom.uuid?.toRealm() ?? Uuid.v4(),
        definitions: [
          for (var cdom in dom.definitions) cdom.toJson().encode(),
        ],
      );

  static Task toDom({
    required DbTask dao,
  }) {
    final domDefinitions = [
      for (var cdao in dao.definitions)
        TaskDefinition.fromJson(jsonDecode(cdao)),
    ];

    switch (dao.collectionSlug) {
      case "diverge":
        return Task.diverge(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid.bytes.asUint8List()),
        );

      case "converge":
        return Task.converge(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid.bytes.asUint8List()),
        );

      case "feedback":
        return Task.feedback(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid.bytes.asUint8List()),
        );

      default:
        return Task.linear(
          icon: dao.icon,
          name: dao.name,
          description: dao.description,
          definitions: domDefinitions,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid.bytes.asUint8List()),
        );
    }
  }
}
