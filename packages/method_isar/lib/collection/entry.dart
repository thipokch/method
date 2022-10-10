// ignore_for_file: invalid_use_of_protected_member

import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:method_isar/collection/entry_definition.dart';
import 'package:method_isar/collection/task.dart';

import '../collection.dart';

part 'entry.g.dart';

@collection
class DbEntry extends DaoObject with DaoDocument<DbTask> {
  @override
  final String collectionSlug = "entry";

  @override
  final DateTime createdAt;
  @override
  final DateTime readAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? commitedAt;
  @override
  final DateTime? deletedAt;

  List<DbEntryDefinition?> definitions;

  DbEntry({
    this.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
    required this.createdAt,
    required this.readAt,
    required this.updatedAt,
    this.commitedAt,
    this.deletedAt,
  });
}

class EntryMapper {
  const EntryMapper._();

  static DbEntry toDao({
    required Entry dom,
  }) =>
      DbEntry(
        definitions: dom.definitions
            .map((dom) =>
                dom != null ? EntryDefinitionMapper.toDao(dom: dom) : null)
            .toList(),
        id: dom.id,
        hierarchyPath: dom.hierarchyPath,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        createdAt: dom.createdAt,
        readAt: dom.readAt,
        updatedAt: dom.updatedAt,
        commitedAt: dom.commitedAt,
        deletedAt: dom.deletedAt,
      );

  static Entry toDom({
    required DbEntry dao,
  }) =>
      Entry(
        template: TaskMapper.toDom(dao: dao.template.value!),
        definitions: dao.definitions
            .map((dao) =>
                dao != null ? EntryDefinitionMapper.toDom(dao: dao) : null)
            .toList(),
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
        createdAt: dao.createdAt,
        readAt: dao.readAt,
        updatedAt: dao.updatedAt,
        commitedAt: dao.commitedAt,
        deletedAt: dao.deletedAt,
      );
}

class EntryRepository
    extends DaoDocumentCollection<Entry, DbEntry, Task, DbTask> {
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
