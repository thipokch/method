// ignore_for_file: invalid_use_of_protected_member

import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/entry_definition.dart';
import 'package:persistence/collection/task.dart';

import '../collection.dart';

part 'entry.g.dart';

@collection
class DbEntry extends DaoObject with DaoTemplate<DbTask> {
  @override
  final String collectionSlug = "entry";

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

class EntryRepository extends Collection<Entry, DbEntry>
    with DaoTemplateCollection<Entry, DbEntry, Task, DbTask> {
  const EntryRepository(super.driver);

  @override
  DbEntry toDao(Entry dom) => EntryMapper.toDao(dom: dom);

  @override
  Entry toDom(DbEntry dao) => EntryMapper.toDom(dao: dao);

  @override
  IsarCollection<DbTask> get templateCollection => source.instance.dbTasks;

  @override
  WhereRepeatModifier<DbEntry, DbEntry, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));
}
