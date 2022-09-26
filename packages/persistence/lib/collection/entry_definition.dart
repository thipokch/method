import 'package:core/model/entry_definition.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;

import '../collection.dart';

part 'entry_definition.g.dart';

@embedded
class DbEntryDefinition extends DaoEmbeded {
  @override
  final String collectionSlug;

  const DbEntryDefinition({
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
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );

      default:
        return EntryDefinition.note(
          hierarchyPath: dao.hierarchyPath,
          id: dao.id,
        );
    }
  }
}

class EntryDefinitionRepository
    extends Collection<EntryDefinition, DbEntryDefinition> {
  EntryDefinitionRepository(super.driver);

  @override
  DbEntryDefinition toDao(EntryDefinition dom) =>
      EntryDefinitionMapper.toDao(dom: dom);

  @override
  EntryDefinition toDom(DbEntryDefinition dao) =>
      EntryDefinitionMapper.toDom(dao: dao);
}
