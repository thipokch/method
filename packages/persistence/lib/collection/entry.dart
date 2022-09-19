import 'package:core/model/entry.dart';
import 'package:core/model/entry_definition.dart';
import 'package:isar/isar.dart';
import 'package:persistence/collection/entry_definition.dart';
import 'package:persistence/collection/task.dart';

import '../collection.dart';

part 'entry.g.dart';

@collection
class DbEntry extends CollectionObject<Entry> {
  Id? dbid;

  @override
  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @override
  @Index(unique: true)
  String id;

  final template = IsarLink<DbTask>();
  final definitions = IsarLinks<DbEntryDefinition>();

  DbEntry({
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });

  static DbEntry from({
    required Entry model,
  }) =>
      DbEntry(
        hierarchyPath: model.hierarchyPath,
        id: model.id,
        uuid: model.uuid!.toBytes(),
      );

  @override
  Entry toModel() => Entry(
        template: template.value!.toModel(),
        definitions: definitions
            .map<EntryDefinition>((element) => element.toModel())
            .toList(),
        hierarchyPath: hierarchyPath,
        id: id,
      );
}
