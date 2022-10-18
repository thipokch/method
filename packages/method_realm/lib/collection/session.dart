part of 'collection.dart';

class SessionCollection extends RealmCollection<Session, DbSession> {
  const SessionCollection(super.source);

  @override
  DbSession toDao(Session dom) => _SessionMapper.toDao(dom: dom);

  @override
  Session toDom(DbSession dao) => _SessionMapper.toDom(dao: dao);
}

class _SessionMapper {
  const _SessionMapper._();

  static DbSession toDao({
    required Session dom,
  }) =>
      DbSession(
        dom.hierarchyPath,
        dom.id,
        dom.uuid?.toRealm() ?? Uuid.v4(),
        dom.createdAt,
        dom.readAt,
        dom.updatedAt,
        template: ExerciseMapper.toDao(dom: dom.template),
        commitedAt: dom.commitedAt,
        deletedAt: dom.deletedAt,
        definitions: [
          for (var cdom in dom.definitions.whereType<Entry>())
            _EntryMapper.toDao(dom: cdom),
        ],
      );

  static Session toDom({
    required DbSession dao,
  }) {
    final indexedEntries = {
      for (var e in dao.definitions) e.id: _EntryMapper.toDom(dao: e),
    };

    final mappedEntries = [
      for (var e in dao.template!.definitions) indexedEntries[e.id],
    ].whereType<Entry>().toList();

    return Session(
      template: ExerciseMapper.toDom(dao: dao.template!),
      definitions: mappedEntries,
      hierarchyPath: dao.hierarchyPath,
      id: dao.id,
      uuid: UuidValue.fromList(dao.uuid.bytes.asUint8List()),
      createdAt: dao.createdAt,
      readAt: dao.readAt,
      updatedAt: dao.updatedAt,
      commitedAt: dao.commitedAt,
      deletedAt: dao.deletedAt,
    );
  }
}
