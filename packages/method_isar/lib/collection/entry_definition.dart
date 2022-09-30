import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:method_core/model/entry_definition.dart';

import '../collection.dart';

part 'entry_definition.g.dart';

@embedded
class DbEntryDefinition extends DaoEmbeded {
  @override
  final String collectionSlug;
  final String data;

  const DbEntryDefinition({
    this.data = "",
    this.collectionSlug = "",
    super.hierarchyPath = "",
    super.id = "",
  });
}

class EntryDefinitionMapper {
  const EntryDefinitionMapper._();

  static DbEntryDefinition toDao({
    required EntryDefinition dom,
  }) =>
      DbEntryDefinition(
        data: dom.whenOrNull(
              note: (data, hierarchyPath, id, uuid) => data,
            ) ??
            "",
        collectionSlug: dom.collectionSlug,
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
      );

  static EntryDefinition toDom({
    required DbEntryDefinition dao,
  }) {
    switch (dao.collectionSlug) {
      case "label":
        return EntryDefinition.label(
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );

      case "note":
        return EntryDefinition.note(
          data: dao.data,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );

      default:
        return EntryDefinition.note(
          data: dao.data,
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );
    }
  }
}
