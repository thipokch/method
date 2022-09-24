import 'package:core/model/entry_definition.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart';

import '../collection.dart';

part 'entry_definition.g.dart';

@collection
class DbEntryDefinition extends Dao<EntryDefinition> {
  DbEntryDefinition({
    required super.collectionSlug,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });
}

class EntryDefinitionMapper {
  const EntryDefinitionMapper._();

  static DbEntryDefinition toDao({
    required EntryDefinition dom,
  }) =>
      DbEntryDefinition(
        collectionSlug: dom.collectionSlug,
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      );

  static EntryDefinition toDom({
    required DbEntryDefinition dao,
  }) {
    switch (dao.collectionSlug) {
      case "label":
        return EntryDefinition.label(
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      case "note":
        return EntryDefinition.note(
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );

      default:
        return EntryDefinition.note(
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
          uuid: UuidValue.fromList(dao.uuid),
        );
    }
  }
}
