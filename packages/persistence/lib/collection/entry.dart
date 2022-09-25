import 'package:core/abstract/uniform.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/entry_definition.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/entry_definition.dart';
import 'package:persistence/collection/task.dart';

import '../collection.dart';

part 'entry.g.dart';

@collection
class DbEntry
    extends DaoWithDefinitions<Entry, EntryDefinition, DbEntryDefinition> {
  final template = IsarLink<DbTask>();

  DbEntry({
    super.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  }) : super(collectionSlug: "entry");
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

class EntryRepository extends CollectionWithDefinitions<Entry, DbEntry,
    EntryDefinition, DbEntryDefinition> {
  const EntryRepository(super.driver);

  @override
  final parentToDao = EntryMapper.toDao;

  @override
  final parentToDom = EntryMapper.toDom;

  @override
  WhereRepeatModifier<DbEntry, DbEntry, Uniform> get uniformEqualTo =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );

  @override
  Collection<EntryDefinition, DbEntryDefinition> get childCollection =>
      EntryDefinitionRepository(source);

  @override
  Future<int> put(Entry dom) => super.put(dom)
    ..then((isarId) => this.collection.getSync(isarId)!
          ..template.value =
              source.instance.dbTasks.getByIdSync(dom.template.id)!)
        .then((dao) => write(() => dao.template.save()));

  @override
  Future<List<int>> putAll(List<Entry> doms) => super.putAll(doms)
    ..then((isarId) =>
        this.collection.getAllSync(isarId).asMap().entries.forEach((e) {
          if (e.value != null) {
            e.value!.template.value =
                source.instance.dbTasks.getByIdSync(doms[e.key].template.id);

            write(() => e.value!.template.save());
          }
        }));
}
