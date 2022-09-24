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
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      )..template.value = TaskMapper.toDao(dom: dom.template);

  static Entry toDom({
    required DbEntry dao,
    List<EntryDefinition> definitions = const [],
  }) =>
      Entry(
        template: TaskMapper.toDom(dao: dao.template.value!),
        definitions: definitions,
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
  final childToDao = EntryDefinitionMapper.toDao;

  @override
  final childToDom = EntryDefinitionMapper.toDom;

  @override
  WhereRepeatModifier<DbEntry, DbEntry, Uniform> get uniformEqualTo =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );
}
