import 'package:core/model/entry_definition.dart';
import 'package:isar/isar.dart';

import '../collection.dart';

part 'entry_definition.g.dart';

@collection
class DbEntryDefinition extends CollectionObject<EntryDefinition> {
  Id? dbid;

  String collectionSlug;

  @override
  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @override
  @Index(unique: true)
  String id;

  DbEntryDefinition({
    required this.collectionSlug,
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });

  static DbEntryDefinition from({
    required EntryDefinition model,
  }) =>
      DbEntryDefinition(
        collectionSlug: model.collectionSlug,
        hierarchyPath: model.hierarchyPath,
        id: model.id,
        uuid: model.uuid!.toBytes(),
      );

  @override
  EntryDefinition toModel() {
    switch (collectionSlug) {
      case "label":
        return EntryDefinition.label(
          hierarchyPath: hierarchyPath,
          id: id,
        );

      case "note":
        return EntryDefinition.note(
          hierarchyPath: hierarchyPath,
          id: id,
        );

      default:
        return EntryDefinition.note(
          hierarchyPath: hierarchyPath,
          id: id,
        );
    }
  }
}
