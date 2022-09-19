import 'package:core/model/task.dart';
import 'package:isar/isar.dart';
import 'package:persistence/collection/task_definition.dart';

import '../collection.dart';

part 'task.g.dart';

@collection
class DbTask extends CollectionObject<Task> {
  Id? dbid;

  @override
  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @override
  @Index(unique: true)
  String id;

  final definitions = IsarLink<DbTaskDefinition>();

  String icon;
  String name;
  String description;

  DbTask({
    required this.icon,
    required this.name,
    required this.description,
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });

  static DbTask from({
    required Task model,
  }) =>
      DbTask(
        icon: model.icon,
        name: model.name,
        description: model.description,
        hierarchyPath: model.hierarchyPath,
        id: model.id,
        uuid: model.uuid!.toBytes(),
      );

  @override
  Task toModel() => Task.linear(
        icon: icon,
        name: name,
        description: description,
        definitions: [],
        // definitions
        //     .map<TaskDefinition>((element) => element.toModel())
        //     .toList(),
        hierarchyPath: hierarchyPath,
        id: id,
      );
}
