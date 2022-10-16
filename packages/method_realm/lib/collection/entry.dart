part of 'collection.dart';

class EntryCollection extends RealmCollection<Entry, DbEntry> {
  const EntryCollection(super.source);

  @override
  DbEntry toDao(Entry dom) => _EntryMapper.toDao(dom: dom);

  @override
  Entry toDom(DbEntry dao) => _EntryMapper.toDom(dao: dao);
}

class _EntryMapper {
  const _EntryMapper._();

  static DbEntry toDao({
    required Entry dom,
  }) =>
      DbEntry(
        dom.hierarchyPath,
        dom.id,
        dom.uuid?.toRealm() ?? Uuid.v4(),
        dom.createdAt,
        dom.readAt,
        dom.updatedAt,
        template: _TaskMapper.toDao(dom: dom.template),
        commitedAt: dom.commitedAt,
        deletedAt: dom.deletedAt,
        definitions: [
          for (var cdom in dom.definitions) cdom?.toJson().encode(),
        ],
      );

  static Entry toDom({
    required DbEntry dao,
  }) =>
      Entry(
        template: _TaskMapper.toDom(dao: dao.template!),
        definitions: [
          for (var cdao in dao.definitions)
            cdao != null ? EntryDefinition.fromJson(jsonDecode(cdao)) : null,
        ],
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
