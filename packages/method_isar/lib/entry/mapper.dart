// ignore_for_file: invalid_use_of_protected_member

import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/util/uuid.dart';

import '../schema.dart';
import '../task/mapper.dart';

class DbEntryMapper {
  const DbEntryMapper._();

  static DbEntry toDao(
    Entry dom,
  ) =>
      DbEntry(
        definitions:
            dom.definitions.map(DbEntryDefinitionMapper.toDao).toList(),
        id: dom.id,
        hierarchyPath: dom.hierarchyPath,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        createdAt: dom.createdAt,
        readAt: dom.readAt,
        updatedAt: dom.updatedAt,
        commitedAt: dom.commitedAt,
        deletedAt: dom.deletedAt,
      );

  static Entry toDom(
    DbEntry dao,
  ) =>
      Entry(
        template: DbTaskMapper.toDom(dao: dao.template.value!),
        definitions:
            dao.definitions.map(DbEntryDefinitionMapper.toDom).toList(),
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

class DbEntryDefinitionMapper {
  const DbEntryDefinitionMapper._();

  static DbEntryDefinition toDao(
    EntryDefinition dom,
  ) =>
      DbEntryDefinition(
        data: dom.whenOrNull(
              note: (data, hierarchyPath, id, uuid) => data,
            ) ??
            "",
        collectionSlug: dom.collectionSlug,
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
      );

  static EntryDefinition toDom(
    DbEntryDefinition dao,
  ) {
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
