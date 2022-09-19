import 'package:core/model/task_definition.dart';
import 'package:isar/isar.dart';

import '../collection.dart';

part 'task_definition.g.dart';

@collection
class DbTaskDefinition extends CollectionObject<TaskDefinition> {
  Id? dbid;

  String collectionSlug;

  @override
  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @override
  @Index(unique: true)
  String id;

  String icon;
  String name;
  String description;

  DbTaskDefinition({
    required this.icon,
    required this.name,
    required this.description,
    required this.collectionSlug,
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });

  static DbTaskDefinition from({
    required TaskDefinition model,
  }) =>
      DbTaskDefinition(
        icon: model.icon,
        name: model.name,
        description: model.description,
        collectionSlug: model.collectionSlug,
        hierarchyPath: model.hierarchyPath,
        id: model.id,
        uuid: model.uuid!.toBytes(),
      );

  @override
  TaskDefinition toModel() {
    switch (collectionSlug) {
      case "label":
        return TaskDefinition.label(
          icon: icon,
          name: name,
          description: description,
          hierarchyPath: hierarchyPath,
          id: id,
        );

      case "note":
        return TaskDefinition.note(
          icon: icon,
          name: name,
          description: description,
          hierarchyPath: hierarchyPath,
          id: id,
        );

      default:
        return TaskDefinition.note(
          icon: icon,
          name: name,
          description: description,
          hierarchyPath: hierarchyPath,
          id: id,
        );
    }
  }
}

enum DbTaskDefinitionType {
  unknown,
  label,
  note,
}
