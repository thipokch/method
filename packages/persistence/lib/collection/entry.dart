import 'package:core/model/entry.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/entry_definition.dart';
import 'package:persistence/collection/task.dart';

import '../collection.dart';

part 'entry.g.dart';

@collection
class DbEntry extends DaoObject {
  @override
  final String collectionSlug = "entry";

  final template = IsarLink<DbTask>();
  List<DbEntryDefinition> definitions;

  DbEntry({
    this.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });
}

class EntryMapper {
  const EntryMapper._();

  static DbEntry toDao({
    required Entry dom,
  }) =>
      DbEntry(
        definitions: dom.definitions
            .map((dom) => EntryDefinitionMapper.toDao(dom: dom))
            .toList(),
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      );

  static Entry toDom({
    required DbEntry dao,
  }) =>
      Entry(
        template: TaskMapper.toDom(dao: dao.template.value!),
        definitions: dao.definitions
            .map((dao) => EntryDefinitionMapper.toDom(dao: dao))
            .toList(),
        hierarchyPath: dao.hierarchyPath,
        uuid: UuidValue.fromList(dao.uuid),
        id: dao.id,
      );
}

class EntryRepository extends Collection<Entry, DbEntry> {
  const EntryRepository(super.driver);

  @override
  DbEntry toDao(Entry dom) => EntryMapper.toDao(dom: dom);

  @override
  Entry toDom(DbEntry dao) => EntryMapper.toDom(dao: dao);

  @override
  Future<int> put(Entry dom) async {
    final prom = super.put(dom);

    await prom
        .then((dbid) => this.collection.get(dbid))
        .then((dao) => dao!
          ..template.value =
              source.instance.dbTasks.getByIdSync(dom.template.id)!)
        .then((dao) => write(() => dao.template.save()));

    return prom;
  }

  @override
  Future<List<int>> putAll(List<Entry> doms) async {
    final prom = super.putAll(doms);

    await prom
        .then((dbids) => this.collection.getAll(dbids))
        .then((daos) => daos.whereType<DbEntry>().toList())
        .then((daos) {
      final daosTask = source.instance.dbTasks
          .getAllByIdSync(doms.map((e) => e.template.id).toList());

      final writeSync = Isar.getInstance()!.writeTxnSync;

      daos.asMap().entries.forEach((e) {
        e.value.template.value = daosTask[e.key];
        writeSync(() => e.value.template.saveSync());
      });
    });

    return prom;
  }
}
